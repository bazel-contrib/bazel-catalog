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
plot 'commits_by_author.dat' using 1:2 title "Benjamin Peterson" w lines, 'commits_by_author.dat' using 1:3 title "Jared Hance" w lines, 'commits_by_author.dat' using 1:4 title "Genghis Chau" w lines, 'commits_by_author.dat' using 1:5 title "Jason Michalski" w lines, 'commits_by_author.dat' using 1:6 title "Daiwei Fan" w lines, 'commits_by_author.dat' using 1:7 title "Nikhil Marathe" w lines, 'commits_by_author.dat' using 1:8 title "Naphat Sanguansin" w lines, 'commits_by_author.dat' using 1:9 title "Nipunn Koorapati" w lines, 'commits_by_author.dat' using 1:10 title "Dave Zbarsky" w lines, 'commits_by_author.dat' using 1:11 title "Athena Automated Reverts" w lines, 'commits_by_author.dat' using 1:12 title "Alexey Ivanov" w lines, 'commits_by_author.dat' using 1:13 title "Mohamed Bakkar" w lines, 'commits_by_author.dat' using 1:14 title "Ruslan Nigmatullin" w lines, 'commits_by_author.dat' using 1:15 title "Michael Sullivan" w lines, 'commits_by_author.dat' using 1:16 title "David Goldstein" w lines, 'commits_by_author.dat' using 1:17 title "Ivan Levkivskyi" w lines, 'commits_by_author.dat' using 1:18 title "Sean Chang" w lines, 'commits_by_author.dat' using 1:19 title "Kyle Consalus" w lines, 'commits_by_author.dat' using 1:20 title "Jukka Lehtosalo" w lines, 'commits_by_author.dat' using 1:21 title "James Sharpe" w lines
