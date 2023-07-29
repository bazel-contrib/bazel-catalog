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
plot 'lines_of_code_by_author.dat' using 1:2 title "c-parsons" w lines, 'lines_of_code_by_author.dat' using 1:3 title "David Z. Chen" w lines, 'lines_of_code_by_author.dat' using 1:4 title "David Chen" w lines, 'lines_of_code_by_author.dat' using 1:5 title "kendalllaneee" w lines, 'lines_of_code_by_author.dat' using 1:6 title "blossommojekwu" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Nathan Herring" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Laurent Le Brun" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Mathieu Boespflug" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Jon Brandvein" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Vladimir Moskva" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Philipp Wollermann" w lines, 'lines_of_code_by_author.dat' using 1:13 title "László Csomor" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Alexandre Rostovtsev" w lines, 'lines_of_code_by_author.dat' using 1:15 title "ahippler" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Mark Karpov" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Marc Fisher" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Ilya Sherman" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Dmitry Lomov" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Alex Eagle" w lines, 'lines_of_code_by_author.dat' using 1:21 title "pbatg" w lines
