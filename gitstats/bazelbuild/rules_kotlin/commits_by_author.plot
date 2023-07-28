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
plot 'commits_by_author.dat' using 1:2 title "hsyed" w lines, 'commits_by_author.dat' using 1:3 title "Christian Edward Gruber" w lines, 'commits_by_author.dat' using 1:4 title "Hassan Syed" w lines, 'commits_by_author.dat' using 1:5 title "Jonathan Gerrish" w lines, 'commits_by_author.dat' using 1:6 title "Ben Lee" w lines, 'commits_by_author.dat' using 1:7 title "Corbin McNeely-Smith" w lines, 'commits_by_author.dat' using 1:8 title "Christian Gruber" w lines, 'commits_by_author.dat' using 1:9 title "Marc Plano-Lesay" w lines, 'commits_by_author.dat' using 1:10 title "Scotte Zinn" w lines, 'commits_by_author.dat' using 1:11 title "Philipp Wollermann" w lines, 'commits_by_author.dat' using 1:12 title "str" w lines, 'commits_by_author.dat' using 1:13 title "davidstanke" w lines, 'commits_by_author.dat' using 1:14 title "Xin" w lines, 'commits_by_author.dat' using 1:15 title "Tyler Rockwood" w lines, 'commits_by_author.dat' using 1:16 title "Nick K" w lines, 'commits_by_author.dat' using 1:17 title "Mauricio Galindo" w lines, 'commits_by_author.dat' using 1:18 title "Justin Wei" w lines, 'commits_by_author.dat' using 1:19 title "Jeff Zoch" w lines, 'commits_by_author.dat' using 1:20 title "Jakob Buchgraber" w lines, 'commits_by_author.dat' using 1:21 title "Brian McKenna" w lines