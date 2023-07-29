set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'lines_of_code_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Lines"
set xtics rotate
set bmargin 6
plot 'lines_of_code_by_author.dat' using 1:2 title "Lode Vandevenne" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Joergen Ibsen" w lines, 'lines_of_code_by_author.dat' using 1:4 title "lvandeve" w lines, 'lines_of_code_by_author.dat' using 1:5 title "MrKrzYch00" w lines, 'lines_of_code_by_author.dat' using 1:6 title "JayXon" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Lode" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Derek Buitenhuis" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Ville Skyttä" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Kornel Lesiński" w lines, 'lines_of_code_by_author.dat' using 1:11 title "fhanau" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Szabolcs Berecz" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Kornel Lesiński" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Jeffrey Lim @ Vision" w lines, 'lines_of_code_by_author.dat' using 1:15 title "James Ross-Gowan" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Elliott Hughes" w lines, 'lines_of_code_by_author.dat' using 1:17 title "David Sansome" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Alex Xu" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Aaron Kaluszka" w lines
