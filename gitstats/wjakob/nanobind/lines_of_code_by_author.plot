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
plot 'lines_of_code_by_author.dat' using 1:2 title "Wenzel Jakob" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Yoshiki Matsuda" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Joshua Oreman" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Peter Hawkins" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Aaron Gokaslan" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Qingnan Zhou" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Henry Schreiner" w lines, 'lines_of_code_by_author.dat' using 1:9 title "kelvin34501" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Tom de Geus" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Tim Stumbaugh" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Robert Franke" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Nicholas Junge" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Matej Ferencevic" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Brent Yi" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Bela Schaum" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Ömercan Yazici" w lines, 'lines_of_code_by_author.dat' using 1:18 title "aidaco" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Wilfried Karel" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Tom Birch" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Thomasb81" w lines