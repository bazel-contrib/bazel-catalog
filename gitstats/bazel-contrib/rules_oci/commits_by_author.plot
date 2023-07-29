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
plot 'commits_by_author.dat' using 1:2 title "Alex Eagle" w lines, 'commits_by_author.dat' using 1:3 title "Sahin Yort" w lines, 'commits_by_author.dat' using 1:4 title "Sahin" w lines, 'commits_by_author.dat' using 1:5 title "Tetsuo Kiso" w lines, 'commits_by_author.dat' using 1:6 title "Derek Cormier" w lines, 'commits_by_author.dat' using 1:7 title "Thomas Strömberg" w lines, 'commits_by_author.dat' using 1:8 title "Piotr (ptab) Tabor" w lines, 'commits_by_author.dat' using 1:9 title "Jan Uhlík" w lines, 'commits_by_author.dat' using 1:10 title "Brian Myers" w lines, 'commits_by_author.dat' using 1:11 title "Adam Lavin" w lines, 'commits_by_author.dat' using 1:12 title "richieb" w lines, 'commits_by_author.dat' using 1:13 title "Steeve Morin" w lines, 'commits_by_author.dat' using 1:14 title "Preston Van Loon" w lines, 'commits_by_author.dat' using 1:15 title "Paul Salaberria" w lines, 'commits_by_author.dat' using 1:16 title "Mykola Mogylenko" w lines, 'commits_by_author.dat' using 1:17 title "Marc Redemske" w lines, 'commits_by_author.dat' using 1:18 title "Logan Shire" w lines, 'commits_by_author.dat' using 1:19 title "João Guerra" w lines, 'commits_by_author.dat' using 1:20 title "Joseph Glanville" w lines, 'commits_by_author.dat' using 1:21 title "Jason Schein" w lines
