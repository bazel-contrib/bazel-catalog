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
plot 'lines_of_code_by_author.dat' using 1:2 title "Abseil Team" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Derek Mauro" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Copybara-Service" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Evan Brown" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Andy Getzendanner" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Loo Rong Jie" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Gennadiy Rozental" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Martijn Vels" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Dino Radakovic" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Gennadiy Civil" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Aaron Jacobs" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Rose" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Roman Gershman" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Greg Falcon" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Mike Kruskal" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Benjamin Barenblat" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Xiaoyi Zhang" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Saleem Abdulrasool" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Randolf J" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Milad Fa" w lines
