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
plot 'lines_of_code_by_author.dat' using 1:2 title "Siddhartha Bagaria" w lines, 'lines_of_code_by_author.dat' using 1:3 title "James Sharpe" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Rahul Butani" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Zhanyong Wan" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Trevor Hickey" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Marcus Boerger" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Gary Miguel" w lines, 'lines_of_code_by_author.dat' using 1:9 title "jpieper" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Yaz Saito" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Yasushi Saito" w lines, 'lines_of_code_by_author.dat' using 1:12 title "William Izzo" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Thulio Ferraz Assis" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Oliver Lee" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Marcus Hines" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Marc Plano-Lesay" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Liu Jiaming" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Dorian Peake" w lines, 'lines_of_code_by_author.dat' using 1:19 title "sabarabc" w lines, 'lines_of_code_by_author.dat' using 1:20 title "alexeiser" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Yong Tang" w lines
