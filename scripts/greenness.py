#!/usr/bin/env python3
"""Calculate the health of a CI system by measuring time spent red vs green."""

import os
import sys
from datetime import datetime
import requests
from typing import List, Dict

DEBUG = False

def get_github_headers() -> Dict[str, str]:
    """Get headers for GitHub API calls."""
    token = os.getenv('GH_TOKEN')
    if not token:
        print("Set GH_TOKEN to a GitHub token. Make one at https://github.com/settings/tokens")
        sys.exit(1)

    return {
        'Authorization': f'Bearer {token}',
        'Content-Type': 'application/json',
    }

def get_default_branch(owner: str, repo: str) -> str:
    """Get the default branch for a repository."""
    query = """
    query($owner: String!, $repo: String!) {
      repository(owner: $owner, name: $repo) {
        defaultBranchRef {
          name
        }
      }
    }
    """
    
    variables = {
        'owner': owner,
        'repo': repo
    }
    
    response = requests.post('https://api.github.com/graphql',
                           headers=get_github_headers(),
                           json={'query': query, 'variables': variables})
    response.raise_for_status()
    
    data = response.json()
    if 'errors' in data:
        print("GraphQL Errors:", data['errors'])
        sys.exit(1)
        
    return data['data']['repository']['defaultBranchRef']['name']

def fetch_commit_statuses(owner: str, repo: str, branch: str) -> List[Dict]:
    """Fetch commit statuses using GitHub's GraphQL API."""
    headers = get_github_headers()
    
    # GraphQL query to get commit statuses
    query = """
    query($owner: String!, $repo: String!, $branch: String!) {
      repository(owner: $owner, name: $repo) {
        ref(qualifiedName: $branch) {
          target {
            ... on Commit {
              history(first: 100) {
                nodes {
                  committedDate
                  statusCheckRollup {
                    state
                  }
                  url
                }
              }
            }
          }
        }
      }
    }
    """
    
    variables = {
        'owner': owner,
        'repo': repo,
        'branch': branch
    }
    
    response = requests.post('https://api.github.com/graphql',
                           headers=headers,
                           json={'query': query, 'variables': variables})
    response.raise_for_status()
    
    data = response.json()
    if 'errors' in data:
        print("GraphQL Errors:", data['errors'])
        sys.exit(1)
        
    commits = data['data']['repository']['ref']['target']['history']['nodes']
    # Convert to simpler format and sort by date
    statuses = [
        {
            'date': commit['committedDate'],
            'state': commit['statusCheckRollup']['state'] if commit['statusCheckRollup'] else None,
            'url': commit['url'],
        }
        for commit in commits
        if commit['statusCheckRollup']
    ]
    statuses.sort(key=lambda x: x['date'])
    return statuses

def format_date(date_str: str) -> str:
    """Format an ISO date string to a human readable format."""
    dt = datetime.fromisoformat(date_str.replace('Z', '+00:00'))
    return dt.strftime('%B %d, %Y at %I:%M %p UTC')

def format_duration_with_color(seconds: int) -> str:
    """Format a duration with color based on length."""
    duration = format_duration(seconds)
    if seconds > 7 * 24 * 3600:  # > 1 week
        return f"\033[31m{duration}\033[0m"  # red
    elif seconds > 24 * 3600:  # > 1 day
        return f"\033[33m{duration}\033[0m"  # yellow
    else:
        return f"\033[32m{duration}\033[0m"  # green

def format_duration(seconds: int) -> str:
    """Format a duration in seconds to a human readable string, showing only the two most
    significant time units."""
    if seconds == 0:
        return "0 seconds"

    months = seconds // (30 * 24 * 3600)  # Approximate months
    seconds %= (30 * 24 * 3600)
    days = seconds // (24 * 3600)
    seconds %= (24 * 3600)
    hours = seconds // 3600
    seconds %= 3600
    minutes = seconds // 60
    seconds %= 60

    parts = []
    if months > 0:
        parts.append(f"{months} month{'s' if months != 1 else ''}")
    if days > 0:
        parts.append(f"{days} day{'s' if days != 1 else ''}")
    if hours > 0:
        parts.append(f"{hours} hour{'s' if hours != 1 else ''}")
    if minutes > 0:
        parts.append(f"{minutes} minute{'s' if minutes != 1 else ''}")
    if seconds > 0:
        parts.append(f"{seconds} second{'s' if seconds != 1 else ''}")
    
    return ", ".join(parts[:2])

def calculate_health(statuses: List[Dict]) -> Dict:
    """Calculate the time spent in green and red states."""
    total_green_seconds = 0
    total_red_seconds = 0
    prev_time = None
    prev_state = None

    for status in statuses:
        current_time = datetime.fromisoformat(status['date'].replace('Z', '+00:00'))
        current_state = status['state']

        if prev_time and prev_state:
            delta_seconds = int((current_time - prev_time).total_seconds())
            if prev_state == 'SUCCESS':
                total_green_seconds += delta_seconds
            elif prev_state == 'FAILURE':
                total_red_seconds += delta_seconds

        prev_time = current_time
        prev_state = current_state

    total_time = total_green_seconds + total_red_seconds
    green_percentage = (total_green_seconds / total_time * 100) if total_time > 0 else 0

    return {
        'green_seconds': total_green_seconds,
        'red_seconds': total_red_seconds,
        'total_seconds': total_time,
        'green_percentage': green_percentage,
        'green_duration': format_duration(total_green_seconds),
        'red_duration': format_duration(total_red_seconds),
        'total_duration': format_duration(total_time)
    }

def main():
    """Main entry point."""
    if len(sys.argv) < 3:
        print("Usage: greenness.py [--verbose|-v] <owner> <repo>")
        print("Example: greenness.py bazelbuild rules_pkg")
        print("Options:")
        print("  --verbose, -v  Show detailed status changes")
        sys.exit(1)
        
    # Parse arguments
    verbose = False
    args = sys.argv[1:]
    if args[0] in ['-v', '--verbose']:
        verbose = True
        args = args[1:]
    
    if len(args) < 2:
        print("Error: Missing owner and repo arguments")
        sys.exit(1)
        
    owner = args[0]
    repo = args[1]
        

    branch = get_default_branch(owner, repo)
    if verbose:
        print(f"Analyzing default branch: {branch}")
    
    statuses = fetch_commit_statuses(owner, repo, branch)
    
    # Print detailed status changes with timestamps if verbose mode is on
    if verbose:
        prev_time = None
        print("\nStatus changes:")
        for status in statuses:
            state = status['state'] or 'UNKNOWN'
            current_time = datetime.fromisoformat(status['date'].replace('Z', '+00:00'))
            elapsed = ''
            if prev_time:
                delta_seconds = int((current_time - prev_time).total_seconds())
                elapsed = f" (+{delta_seconds}s)"
            print(f"{status['date']}: {state}{elapsed} - ({status['url']})")
            prev_time = current_time

    # Calculate and print health metrics
    health = calculate_health(statuses)
    
    # Calculate time period being analyzed
    latest_time = datetime.fromisoformat(statuses[-1]['date'].replace('Z', '+00:00'))
    earliest_time = datetime.fromisoformat(statuses[0]['date'].replace('Z', '+00:00'))
    period = earliest_time - latest_time
    
    print(f"\nCI Health Summary for {owner}/{repo}:")
    print(f"Time period: since {format_date(statuses[0]['date'])}")
    
    # Create ASCII visualization of the timeline
    width = 50  # width of the visualization
    if len(statuses) > 1:
        timeline = []
        total_time = (latest_time - earliest_time).total_seconds()
        if DEBUG:
            print("\nDebug: Total time period:", format_duration(int(total_time)))
        
        # Go through commits from oldest to newest
        for i in range(len(statuses) - 1):
            current = datetime.fromisoformat(statuses[i]['date'].replace('Z', '+00:00'))
            next_time = datetime.fromisoformat(statuses[i+1]['date'].replace('Z', '+00:00'))
            # Use the state that was active during this period
            state = statuses[i]['state'] or 'UNKNOWN'
            
            # Calculate how many characters this time period should occupy
            period_seconds = (next_time - current).total_seconds()
            chars = int((period_seconds / total_time) * width)
            if DEBUG:
                print(f"Debug: Period {state}: {format_duration_with_color(int(period_seconds))} -> {chars} chars")
            
            # Only show periods that are long enough to be visible
            if chars > 0:
                chars = max(1, chars)  # Ensure at least 1 char for significant periods
            
            # Add appropriate number of characters based on state
            if state == 'SUCCESS':
                timeline.extend([f'\033[32m█\033[0m'] * chars)  # green
            elif state == 'FAILURE':
                timeline.extend([f'\033[31m░\033[0m'] * chars)  # red
            else:
                timeline.extend([f'\033[37m·\033[0m'] * chars)  # white
        
        # Ensure we fill the width (might be off by 1-2 due to rounding)
        while len(timeline) < width:
            timeline.append(timeline[-1] if timeline else '·')
        timeline = timeline[:width]  # trim if we somehow went over
        
        print(''.join(timeline) + " (oldest → newest)")
    print(f"Green time: {health['green_duration']}")
    print(f"Red time: {health['red_duration']}")
    print(f"CI Health: {health['green_percentage']:.1f}% green")

if __name__ == '__main__':
    main()
