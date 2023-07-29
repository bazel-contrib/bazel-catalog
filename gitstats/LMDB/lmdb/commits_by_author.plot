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
plot 'commits_by_author.dat' using 1:2 title "Howard Chu" w lines, 'commits_by_author.dat' using 1:3 title "Hallvard Furuseth" w lines, 'commits_by_author.dat' using 1:4 title "Hallvard B Furuseth" w lines, 'commits_by_author.dat' using 1:5 title "Quanah Gibson-Mount" w lines, 'commits_by_author.dat' using 1:6 title "Salvador Ortiz" w lines, 'commits_by_author.dat' using 1:7 title "moneromooo-monero" w lines, 'commits_by_author.dat' using 1:8 title "leo@yuriev.ru" w lines, 'commits_by_author.dat' using 1:9 title "Kris Zyp" w lines, 'commits_by_author.dat' using 1:10 title "Claude Brisson" w lines, 'commits_by_author.dat' using 1:11 title "Pavel Medvedev" w lines, 'commits_by_author.dat' using 1:12 title "Orivej Desh" w lines, 'commits_by_author.dat' using 1:13 title "Mike Hommey" w lines, 'commits_by_author.dat' using 1:14 title "Leo Yuriev" w lines, 'commits_by_author.dat' using 1:15 title "Heiko Becker" w lines, 'commits_by_author.dat' using 1:16 title "Chris Mikkelson" w lines, 'commits_by_author.dat' using 1:17 title "Sebastien Launay" w lines, 'commits_by_author.dat' using 1:18 title "Oskari Timperi" w lines, 'commits_by_author.dat' using 1:19 title "Ondrej Kuznik" w lines, 'commits_by_author.dat' using 1:20 title "Luke Yeager" w lines, 'commits_by_author.dat' using 1:21 title "Lorenz Bauer" w lines
