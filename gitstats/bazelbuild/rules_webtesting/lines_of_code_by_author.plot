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
plot 'lines_of_code_by_author.dat' using 1:2 title "Marc Fisher" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Marc Fisher II" w lines, 'lines_of_code_by_author.dat' using 1:4 title "mtrea" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Jason Juang" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Yun Peng" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Joshua Bruning" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Greg Magolan" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Jeff Hodges" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Vladimir Moskva" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Justine Tunney" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Zellyn Hunter" w lines, 'lines_of_code_by_author.dat' using 1:13 title "干悦 Yue Gan" w lines, 'lines_of_code_by_author.dat' using 1:14 title "katre" w lines, 'lines_of_code_by_author.dat' using 1:15 title "James Judd" w lines, 'lines_of_code_by_author.dat' using 1:16 title "GIT" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Dmitry Lomov" w lines, 'lines_of_code_by_author.dat' using 1:18 title "davidstanke" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Tobias Werth" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Sam Gammon" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Philipp Wollermann" w lines
