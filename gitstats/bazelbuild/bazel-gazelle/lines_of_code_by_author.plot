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
plot 'lines_of_code_by_author.dat' using 1:2 title "Jay Conrod" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Zhongpeng Lin" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Brandon Lico" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Rob Figueiredo" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Tanya Bouman" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Tyler French" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Andrew Z Allen" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Alex Eagle" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Siddhartha Bagaria" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Mikhail Mazurskiy" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Danny Wolf" w lines, 'lines_of_code_by_author.dat' using 1:13 title "tomlu" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Ricky Pai" w lines, 'lines_of_code_by_author.dat' using 1:15 title "aptenodytes-forsteri" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Yasushi Saito" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Weixiao Huang" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Wael Nasreddine" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Steeve Morin" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Scott Blum" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Pascal Muetschard" w lines
