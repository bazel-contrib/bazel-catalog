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
plot 'lines_of_code_by_author.dat' using 1:2 title "Greg Magolan" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Alex Eagle" w lines, 'lines_of_code_by_author.dat' using 1:4 title "renovate[bot]" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Jason Bedard" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Derek Cormier" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Sahin Yort" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Alex Torok" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Matt Mackay" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Renovate Bot" w lines, 'lines_of_code_by_author.dat' using 1:11 title "John Firebaugh" w lines, 'lines_of_code_by_author.dat' using 1:12 title "David" w lines, 'lines_of_code_by_author.dat' using 1:13 title "hunshcn" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Tobias Schlatter" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Red Daly" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Pedro Barco" w lines, 'lines_of_code_by_author.dat' using 1:17 title "JiaLiPassion" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Aleksey Pesternikov" w lines, 'lines_of_code_by_author.dat' using 1:19 title "thesayyn" w lines, 'lines_of_code_by_author.dat' using 1:20 title "mrmeku" w lines, 'lines_of_code_by_author.dat' using 1:21 title "apesternikov" w lines
