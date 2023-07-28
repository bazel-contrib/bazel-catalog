set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'commits_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Commits"
set xtics rotate
set bmargin 6
plot 'commits_by_author.dat' using 1:2 title "Alex Eagle" w lines, 'commits_by_author.dat' using 1:3 title "Greg Magolan" w lines, 'commits_by_author.dat' using 1:4 title "alexeagle" w lines, 'commits_by_author.dat' using 1:5 title "Matt Mackay" w lines, 'commits_by_author.dat' using 1:6 title "TypeScript Team" w lines, 'commits_by_author.dat' using 1:7 title "Renovate Bot" w lines, 'commits_by_author.dat' using 1:8 title "Typescript Team" w lines, 'commits_by_author.dat' using 1:9 title "Jason Bedard" w lines, 'commits_by_author.dat' using 1:10 title "Paul Gschwendtner" w lines, 'commits_by_author.dat' using 1:11 title "lucassloan" w lines, 'commits_by_author.dat' using 1:12 title "martinprobst" w lines, 'commits_by_author.dat' using 1:13 title "WhiteSource Renovate" w lines, 'commits_by_author.dat' using 1:14 title "Filipe Silva" w lines, 'commits_by_author.dat' using 1:15 title "Fabian Wiles" w lines, 'commits_by_author.dat' using 1:16 title "Keen Yee Liau" w lines, 'commits_by_author.dat' using 1:17 title "rjamet" w lines, 'commits_by_author.dat' using 1:18 title "evanm" w lines, 'commits_by_author.dat' using 1:19 title "dependabot[bot]" w lines, 'commits_by_author.dat' using 1:20 title "Alan Agius" w lines, 'commits_by_author.dat' using 1:21 title "radokirov" w lines
