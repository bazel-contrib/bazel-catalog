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
plot 'lines_of_code_by_author.dat' using 1:2 title "Stefan Bucur" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Tengpeng" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Fabian Meumertzheim" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Xinhao Yuan" w lines, 'lines_of_code_by_author.dat' using 1:6 title "tengpeng" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Robert Spier" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Will Norris" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Tiem Song" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Sergey \"Shnatsel\" Davidoff" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Sasan Tavakkol" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Mizux" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Minhaz Kazi" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Julien Cretin" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Julia Ferraioli" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Grant Timmerman" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Eugene Y. Q. Shen" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Eugene Kliuchnikov" w lines
