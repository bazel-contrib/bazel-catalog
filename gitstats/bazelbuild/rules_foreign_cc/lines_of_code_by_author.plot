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
plot 'lines_of_code_by_author.dat' using 1:2 title "irengrig" w lines, 'lines_of_code_by_author.dat' using 1:3 title "UebelAndre" w lines, 'lines_of_code_by_author.dat' using 1:4 title "James Sharpe" w lines, 'lines_of_code_by_author.dat' using 1:5 title "jheaff1" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Attila Oláh" w lines, 'lines_of_code_by_author.dat' using 1:7 title "bbarnes52" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Keith Smiley" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Fabian Meumertzheim" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Marcel Hlopko" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Dig-Doug" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Daniel Wagner-Hall" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Laurent Le Brun" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Yun Peng" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Sahn Lam" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Philipp Wollermann" w lines, 'lines_of_code_by_author.dat' using 1:17 title "László Csomor" w lines, 'lines_of_code_by_author.dat' using 1:18 title "David Marcin" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Carmi Grushko" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Alexander Turkin" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Alex Eagle" w lines
