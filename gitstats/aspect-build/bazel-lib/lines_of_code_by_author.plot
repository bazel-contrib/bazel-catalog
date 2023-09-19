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
plot 'lines_of_code_by_author.dat' using 1:2 title "Greg Magolan" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Alex Eagle" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Derek Cormier" w lines, 'lines_of_code_by_author.dat' using 1:5 title "renovate[bot]" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Jason Bedard" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Matt Mackay" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Sahin Yort" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Thulio Ferraz Assis" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Renovate Bot" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Malte Poll" w lines, 'lines_of_code_by_author.dat' using 1:12 title "John Firebaugh" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Alister Cordiner" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Twan Koolen" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Konstantin Zadorozhny" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Jiawen (Kevin) Chen" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Jesse Tatasciore" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Jesse Schalken" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Jacob Gardner" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Henk Erik van der Hoek" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Gary Miguel" w lines
