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
plot 'lines_of_code_by_author.dat' using 1:2 title "Christopher Kohlhoff" w lines, 'lines_of_code_by_author.dat' using 1:3 title "chris_kohlhoff" w lines, 'lines_of_code_by_author.dat' using 1:4 title "chris" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Klemens" w lines, 'lines_of_code_by_author.dat' using 1:6 title "klemens-morgenstern" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Vinícius dos Santos Oliveira" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Marcel Raad" w lines, 'lines_of_code_by_author.dat' using 1:9 title "sam" w lines, 'lines_of_code_by_author.dat' using 1:10 title "andrei-datcu" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Klemens Morgenstern" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Jean-Michaël Celerier" w lines, 'lines_of_code_by_author.dat' using 1:13 title "JackBurton79" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Gudmundur Adalsteinsson" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Gregor Jasny" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Cristian Morales Vega" w lines, 'lines_of_code_by_author.dat' using 1:17 title "tusikalanse" w lines, 'lines_of_code_by_author.dat' using 1:18 title "staphen" w lines, 'lines_of_code_by_author.dat' using 1:19 title "root" w lines, 'lines_of_code_by_author.dat' using 1:20 title "regular384" w lines, 'lines_of_code_by_author.dat' using 1:21 title "qicosmos" w lines
