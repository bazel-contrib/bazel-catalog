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
plot 'lines_of_code_by_author.dat' using 1:2 title "David Benjamin" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Adam Langley" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Brian Smith" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Steven Valdez" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Matt Braithwaite" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Matthew Braithwaite" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Bob Beck" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Nick Harper" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Martin Kreichgauer" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Alessandro Ghedini" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Piotr Sikora" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Alex Chernyakhovsky" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Dan McArdle" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Pete Bentley" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Håvard Molland" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Daniel Hirche" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Andres Erbsen" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Aaron Green" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Eric Roman" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Andrii Shyshkalov" w lines
