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
plot 'lines_of_code_by_author.dat' using 1:2 title "Yang Tse" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Daniel Stenberg" w lines, 'lines_of_code_by_author.dat' using 1:4 title "David Drysdale" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Gisle Vanem" w lines, 'lines_of_code_by_author.dat' using 1:6 title "bradh352" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Brad House" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Gunter Knauf" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Steinar H. Gunderson" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Guenter Knauf" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Gregor Jasny" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Jakub Hrozek" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Dominick Meglio" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Dan Fandrich" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Ben Greear" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Ben Noordhuis" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Christian Ammer" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Andrew Selivanov" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Alexander Klauer" w lines, 'lines_of_code_by_author.dat' using 1:20 title "lifenjoiner" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Stephen Sorley" w lines
