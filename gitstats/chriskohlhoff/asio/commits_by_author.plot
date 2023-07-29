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
plot 'commits_by_author.dat' using 1:2 title "Christopher Kohlhoff" w lines, 'commits_by_author.dat' using 1:3 title "chris_kohlhoff" w lines, 'commits_by_author.dat' using 1:4 title "chris" w lines, 'commits_by_author.dat' using 1:5 title "Klemens" w lines, 'commits_by_author.dat' using 1:6 title "klemens-morgenstern" w lines, 'commits_by_author.dat' using 1:7 title "Vinícius dos Santos Oliveira" w lines, 'commits_by_author.dat' using 1:8 title "Marcel Raad" w lines, 'commits_by_author.dat' using 1:9 title "sam" w lines, 'commits_by_author.dat' using 1:10 title "andrei-datcu" w lines, 'commits_by_author.dat' using 1:11 title "Klemens Morgenstern" w lines, 'commits_by_author.dat' using 1:12 title "Jean-Michaël Celerier" w lines, 'commits_by_author.dat' using 1:13 title "JackBurton79" w lines, 'commits_by_author.dat' using 1:14 title "Gudmundur Adalsteinsson" w lines, 'commits_by_author.dat' using 1:15 title "Gregor Jasny" w lines, 'commits_by_author.dat' using 1:16 title "Cristian Morales Vega" w lines, 'commits_by_author.dat' using 1:17 title "tusikalanse" w lines, 'commits_by_author.dat' using 1:18 title "staphen" w lines, 'commits_by_author.dat' using 1:19 title "root" w lines, 'commits_by_author.dat' using 1:20 title "regular384" w lines, 'commits_by_author.dat' using 1:21 title "qicosmos" w lines
