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
plot 'lines_of_code_by_author.dat' using 1:2 title "Dominic Hamon" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Eric Fiselier" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Roman Lebedev" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Eric" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Joao Paulo Magalhaes" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Ismael" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Matt Clarkson" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Vy Nguyen" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Anton Danielsson" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Nicholas Junge" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Chris Kennelly" w lines, 'lines_of_code_by_author.dat' using 1:13 title "dominic" w lines, 'lines_of_code_by_author.dat' using 1:14 title "pleroy" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Kai Wolf" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Pierre Phaneuf" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Mircea Trofin" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Marek Kurdej" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Jean-Louis Leroy" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Billy Robert O'Neal III" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Sergiu Deitsch" w lines
