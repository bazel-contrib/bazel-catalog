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
plot 'lines_of_code_by_author.dat' using 1:2 title "Jin" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Jingwen Chen" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Jingwen" w lines, 'lines_of_code_by_author.dat' using 1:5 title "cheister" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Simon Stewart" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Adam Michael" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Justin Wei" w lines, 'lines_of_code_by_author.dat' using 1:9 title "utzcoz" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Gibson Fahnestock" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Sebastian Mandrean" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Ryan Beasley" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Philipp Wollermann" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Ivo List" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Dmitry Ivankov" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Bor Kae Hwang" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Ben Lee" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Artem Zinnatullin :slowpoke" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Alex Humesky" w lines, 'lines_of_code_by_author.dat' using 1:20 title "yrom" w lines, 'lines_of_code_by_author.dat' using 1:21 title "divanorama" w lines
