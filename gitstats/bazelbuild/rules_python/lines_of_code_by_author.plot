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
plot 'lines_of_code_by_author.dat' using 1:2 title "Jonathon Belotti" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Alex Eagle" w lines, 'lines_of_code_by_author.dat' using 1:4 title "UebelAndre" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Dillon Giacoppo" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Jon Brandvein" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Greg Roodt" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Thulio Ferraz Assis" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Matt Moore" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Doug Greiman" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Matt Mackay" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Paweł Stradomski" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Henry Fuller" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Gergely Fábián" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Douglas Greiman" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Richard Levasseur" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Josh Wilson" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Fabian Meumertzheim" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Derek Cormier" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Zhongpeng Lin" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Keith Smiley" w lines
