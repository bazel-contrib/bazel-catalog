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
plot 'commits_by_author.dat' using 1:2 title "Siddhartha Bagaria" w lines, 'commits_by_author.dat' using 1:3 title "Keith Smiley" w lines, 'commits_by_author.dat' using 1:4 title "efyx" w lines, 'commits_by_author.dat' using 1:5 title "Yikai Zhao" w lines, 'commits_by_author.dat' using 1:6 title "Todd Derr" w lines, 'commits_by_author.dat' using 1:7 title "Michael Hackner" w lines, 'commits_by_author.dat' using 1:8 title "Lawson" w lines, 'commits_by_author.dat' using 1:9 title "FaBrand" w lines, 'commits_by_author.dat' using 1:10 title "yu-linear" w lines, 'commits_by_author.dat' using 1:11 title "kajananchinniah" w lines, 'commits_by_author.dat' using 1:12 title "chenyang.wang" w lines, 'commits_by_author.dat' using 1:13 title "brian-brt" w lines, 'commits_by_author.dat' using 1:14 title "ak-ambi" w lines, 'commits_by_author.dat' using 1:15 title "Walter Gray" w lines, 'commits_by_author.dat' using 1:16 title "Viktor Slavkovic" w lines, 'commits_by_author.dat' using 1:17 title "Vasily Chekalkin" w lines, 'commits_by_author.dat' using 1:18 title "Tony" w lines, 'commits_by_author.dat' using 1:19 title "Tom Birch" w lines, 'commits_by_author.dat' using 1:20 title "Sujan Khadka" w lines, 'commits_by_author.dat' using 1:21 title "Soonho Kong" w lines
