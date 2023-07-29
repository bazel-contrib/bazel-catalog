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
plot 'lines_of_code_by_author.dat' using 1:2 title "Stanisław Barzowski" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Dave Cunningham" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Joe Beda" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Alexander Petrov" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Jayme Bird" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Steve Harris" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Rohit Jangid" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Angus Lees" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Wes McNamee" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Marcelo Cantos" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Jesse-Cameron" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Weston McNamee" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Sevki" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Saloni Juneja" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Alex Clemmer" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Lucas Servén Marín" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Liang Mingqiang" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Hanyu Cui" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Tsuyoshi Hombashi" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Robert Vollmert" w lines
