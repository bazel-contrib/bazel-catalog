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
plot 'lines_of_code_by_author.dat' using 1:2 title "UebelAndre" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Marcel Hlopko" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Daniel Wagner-Hall" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Damien Martin-Guillerez" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Marco Farrugia" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Damien Elmes" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Alex McArther" w lines, 'lines_of_code_by_author.dat' using 1:9 title "David Marcin" w lines, 'lines_of_code_by_author.dat' using 1:10 title "David Chen" w lines, 'lines_of_code_by_author.dat' using 1:11 title "David Z. Chen" w lines, 'lines_of_code_by_author.dat' using 1:12 title "scentini" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Jalal El Mansouri" w lines, 'lines_of_code_by_author.dat' using 1:14 title "David Freese" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Piotr Sikora" w lines, 'lines_of_code_by_author.dat' using 1:16 title "RS" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Krasimir Georgiev" w lines, 'lines_of_code_by_author.dat' using 1:18 title "katre" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Laurent Le Brun" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Greg Bowyer" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Philipp Wollermann" w lines
