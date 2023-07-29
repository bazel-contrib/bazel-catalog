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
plot 'lines_of_code_by_author.dat' using 1:2 title "Craig Tiller" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Jan Tattermusch" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Mark D. Roth" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Muxi Yan" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Vijay Pai" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Yash Tibrewal" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Lidi Zheng" w lines, 'lines_of_code_by_author.dat' using 1:9 title "murgatroid99" w lines, 'lines_of_code_by_author.dat' using 1:10 title "David Garcia Quintas" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Esun Kim" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Nicolas Noble" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Richard Belleville" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Sree Kuchibhotla" w lines, 'lines_of_code_by_author.dat' using 1:15 title "yang-g" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Nicolas \"Pixel\" Noble" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Stanley Cheung" w lines, 'lines_of_code_by_author.dat' using 1:18 title "ncteisen" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Yang Gao" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Yuchen Zeng" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Tim Emiola" w lines
