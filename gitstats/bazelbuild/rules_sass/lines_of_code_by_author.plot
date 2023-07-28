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
plot 'lines_of_code_by_author.dat' using 1:2 title "Sass Bot" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Jeremy Elbourn" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Natalie Weizenbaum" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Paul Gschwendtner" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Damien Martin-Guillerez" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Greg Magolan" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Philipp Wollermann" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Laurent Le Brun" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Derek Perez" w lines, 'lines_of_code_by_author.dat' using 1:11 title "David Chen" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Alex Eagle" w lines, 'lines_of_code_by_author.dat' using 1:13 title "katre" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Vladimir Moskva" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Keen Yee Liau" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Justine Tunney" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Hao Feng" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Eric Stolten" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Dmitry Lomov" w lines, 'lines_of_code_by_author.dat' using 1:20 title "David Z. Chen" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Yun Peng" w lines
