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
plot 'lines_of_code_by_author.dat' using 1:2 title "Peter Laird" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Blaine Buxton" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Peter" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Simon Toens" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Kris foster" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Di Sang" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Blaine" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Nishant Dsouza" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Marzell Camenzind" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Kris Foster" w lines, 'lines_of_code_by_author.dat' using 1:12 title "svc-scm" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Rick Weber" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Matthias Schett" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Marcus Rosti" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Fabian Meumertzheim" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Bei Wu" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Artur Dryomov" w lines
