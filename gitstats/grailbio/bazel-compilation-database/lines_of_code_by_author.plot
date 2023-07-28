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
plot 'lines_of_code_by_author.dat' using 1:2 title "Siddhartha Bagaria" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Keith Smiley" w lines, 'lines_of_code_by_author.dat' using 1:4 title "efyx" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Yikai Zhao" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Todd Derr" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Michael Hackner" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Lawson" w lines, 'lines_of_code_by_author.dat' using 1:9 title "FaBrand" w lines, 'lines_of_code_by_author.dat' using 1:10 title "yu-linear" w lines, 'lines_of_code_by_author.dat' using 1:11 title "kajananchinniah" w lines, 'lines_of_code_by_author.dat' using 1:12 title "chenyang.wang" w lines, 'lines_of_code_by_author.dat' using 1:13 title "brian-brt" w lines, 'lines_of_code_by_author.dat' using 1:14 title "ak-ambi" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Walter Gray" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Viktor Slavkovic" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Vasily Chekalkin" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Tony" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Tom Birch" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Sujan Khadka" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Soonho Kong" w lines
