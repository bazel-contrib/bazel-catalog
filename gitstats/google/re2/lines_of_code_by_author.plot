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
plot 'lines_of_code_by_author.dat' using 1:2 title "Paul Wankadia" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Russ Cox" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Stefano Rivera" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Thiago Farina" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Chris Kennelly" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Jim Huang" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Damien Martin-Guillerez" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Nico Weber" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Clement Courbet" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Shahms King" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Peter Kasting" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Jim Quinn" w lines, 'lines_of_code_by_author.dat' using 1:14 title "rsc" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Zonr Chang" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Viatcheslav Ostapenko" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Tom Payne" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Steven Perron" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Stefan Sauer" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Srinivasan Venkatachary" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Shikugawa" w lines
