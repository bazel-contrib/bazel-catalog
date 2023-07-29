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
plot 'commits_by_author.dat' using 1:2 title "gabime" w lines, 'commits_by_author.dat' using 1:3 title "Gabi Melman" w lines, 'commits_by_author.dat' using 1:4 title "gabi" w lines, 'commits_by_author.dat' using 1:5 title "Charles Milette" w lines, 'commits_by_author.dat' using 1:6 title "Daniel Chabrowski" w lines, 'commits_by_author.dat' using 1:7 title "Muhammed Galib Uludag" w lines, 'commits_by_author.dat' using 1:8 title "Kevin M. Godby" w lines, 'commits_by_author.dat' using 1:9 title "Charless Milette" w lines, 'commits_by_author.dat' using 1:10 title "Denis Ivaykin" w lines, 'commits_by_author.dat' using 1:11 title "Chris Love" w lines, 'commits_by_author.dat' using 1:12 title "gnzlbg" w lines, 'commits_by_author.dat' using 1:13 title "Asit Kumar Dhal" w lines, 'commits_by_author.dat' using 1:14 title "David Zemon" w lines, 'commits_by_author.dat' using 1:15 title "Alexander Zilberkant" w lines, 'commits_by_author.dat' using 1:16 title "Sandor Magyar" w lines, 'commits_by_author.dat' using 1:17 title "steven lunt" w lines, 'commits_by_author.dat' using 1:18 title "Václav Šmilauer" w lines, 'commits_by_author.dat' using 1:19 title "Philip Miller" w lines, 'commits_by_author.dat' using 1:20 title "Jan Kundrát" w lines, 'commits_by_author.dat' using 1:21 title "Artem Martynovich" w lines
