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
plot 'lines_of_code_by_author.dat' using 1:2 title "Nate Cook" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Rauhul Varma" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Saleem Abdulrasool" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Guillaume Lessard" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Yu Ao" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Šimon Javora" w lines, 'lines_of_code_by_author.dat' using 1:8 title "griffin-stewie" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Kth" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Daniel Duan" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Owen Voorhees" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Nate Weaver" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Kotaro Suto" w lines, 'lines_of_code_by_author.dat' using 1:14 title "John Mueller" w lines, 'lines_of_code_by_author.dat' using 1:15 title "François Lamboley" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Alexander Cyon" w lines, 'lines_of_code_by_author.dat' using 1:17 title "ibrahim oktay" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Richard Stelling" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Mike Wermuth" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Mike Lewis" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Miguel Ángel Díaz" w lines
