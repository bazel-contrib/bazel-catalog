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
plot 'lines_of_code_by_author.dat' using 1:2 title "Milo Yip" w lines, 'lines_of_code_by_author.dat' using 1:3 title "miloyip" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Philipp A. Hartmann" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Steve Hanson" w lines, 'lines_of_code_by_author.dat' using 1:6 title "miloyip@gmail.com" w lines, 'lines_of_code_by_author.dat' using 1:7 title "thebusytypist" w lines, 'lines_of_code_by_author.dat' using 1:8 title "ylavic" w lines, 'lines_of_code_by_author.dat' using 1:9 title "John Stiles" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Sergey Kosarevsky" w lines, 'lines_of_code_by_author.dat' using 1:11 title "StilesCrisis" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Omer Katz" w lines, 'lines_of_code_by_author.dat' using 1:13 title "abolz" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Kosta" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Eli Fidler" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Yuri Khan" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Andriy Senkovych" w lines, 'lines_of_code_by_author.dat' using 1:18 title "unknown" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Justin Scheiber" w lines, 'lines_of_code_by_author.dat' using 1:20 title "bluehero" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Kyrega" w lines
