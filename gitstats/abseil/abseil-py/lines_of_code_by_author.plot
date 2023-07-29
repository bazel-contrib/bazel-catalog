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
plot 'lines_of_code_by_author.dat' using 1:2 title "Yilei Yang" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Abseil Team" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Richard Levasseur" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Yilei (Dolee) Yang" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Yilei \"Dolee\" Yang" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Xiaofei Wang" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Yilei Yang (杨一磊)" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Mike Rovner" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Karol M. Langner" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Jan Wedekind" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Gregory P. Smith" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Stephen Thorne" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Sergei Lebedev" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Konstantin Weddige" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Craig Citro" w lines, 'lines_of_code_by_author.dat' using 1:17 title "cclauss" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Rebecca Chen" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Misha Seltzer" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Matt McDonald" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Jamie Tsao" w lines
