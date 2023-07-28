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
plot 'lines_of_code_by_author.dat' using 1:2 title "aiuto" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Andrew Psaltis" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Daniel Sullivan" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Tony Aiuto" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Florian Weikert" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Andrei Dragomir" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Markus Teufelberger" w lines, 'lines_of_code_by_author.dat' using 1:9 title "dannysullivan" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Ryan Beasley" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Jacob Parker" w lines, 'lines_of_code_by_author.dat' using 1:12 title "David Schneider" w lines, 'lines_of_code_by_author.dat' using 1:13 title "fweikert" w lines, 'lines_of_code_by_author.dat' using 1:14 title "andreas-0815-qwertz" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Ulf Adams" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Motiejus Jakštys" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Matt Mikitka" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Martin Medler" w lines, 'lines_of_code_by_author.dat' using 1:19 title "MarkusTeufelberger" w lines, 'lines_of_code_by_author.dat' using 1:20 title "John Cater" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Benjamin Peterson" w lines
