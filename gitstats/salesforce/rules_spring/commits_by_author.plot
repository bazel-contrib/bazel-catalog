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
plot 'commits_by_author.dat' using 1:2 title "Peter Laird" w lines, 'commits_by_author.dat' using 1:3 title "Blaine Buxton" w lines, 'commits_by_author.dat' using 1:4 title "Peter" w lines, 'commits_by_author.dat' using 1:5 title "Simon Toens" w lines, 'commits_by_author.dat' using 1:6 title "Kris foster" w lines, 'commits_by_author.dat' using 1:7 title "Di Sang" w lines, 'commits_by_author.dat' using 1:8 title "Blaine" w lines, 'commits_by_author.dat' using 1:9 title "Nishant Dsouza" w lines, 'commits_by_author.dat' using 1:10 title "Marzell Camenzind" w lines, 'commits_by_author.dat' using 1:11 title "Kris Foster" w lines, 'commits_by_author.dat' using 1:12 title "svc-scm" w lines, 'commits_by_author.dat' using 1:13 title "Rick Weber" w lines, 'commits_by_author.dat' using 1:14 title "Matthias Schett" w lines, 'commits_by_author.dat' using 1:15 title "Marcus Rosti" w lines, 'commits_by_author.dat' using 1:16 title "Fabian Meumertzheim" w lines, 'commits_by_author.dat' using 1:17 title "Bei Wu" w lines, 'commits_by_author.dat' using 1:18 title "Artur Dryomov" w lines
