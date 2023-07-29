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
plot 'commits_by_author.dat' using 1:2 title "Victor Zverovich" w lines, 'commits_by_author.dat' using 1:3 title "vitaut" w lines, 'commits_by_author.dat' using 1:4 title "Vladislav Shchapov" w lines, 'commits_by_author.dat' using 1:5 title "Alexey Ochapov" w lines, 'commits_by_author.dat' using 1:6 title "Daniela Engert" w lines, 'commits_by_author.dat' using 1:7 title "Mario Werner" w lines, 'commits_by_author.dat' using 1:8 title "Junekey Jeon" w lines, 'commits_by_author.dat' using 1:9 title "Greg Sjaardema" w lines, 'commits_by_author.dat' using 1:10 title "Michael Winterberg" w lines, 'commits_by_author.dat' using 1:11 title "Ivan Shynkarenka" w lines, 'commits_by_author.dat' using 1:12 title "Barry Revzin" w lines, 'commits_by_author.dat' using 1:13 title "Jonathan Müller" w lines, 'commits_by_author.dat' using 1:14 title "Dean Moldovan" w lines, 'commits_by_author.dat' using 1:15 title "Владислав Щапов" w lines, 'commits_by_author.dat' using 1:16 title "Shawn Zhong" w lines, 'commits_by_author.dat' using 1:17 title "Paul Dreik" w lines, 'commits_by_author.dat' using 1:18 title "Rosen Penev" w lines, 'commits_by_author.dat' using 1:19 title "Florin Iucha" w lines, 'commits_by_author.dat' using 1:20 title "Elias Kosunen" w lines, 'commits_by_author.dat' using 1:21 title "medithe" w lines
