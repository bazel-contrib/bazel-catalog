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
plot 'lines_of_code_by_author.dat' using 1:2 title "Nelson Elhage" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Rodrigo Queiro" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Aaron Son" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Per Grön" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Julian Amann" w lines, 'lines_of_code_by_author.dat' using 1:7 title "ZacVawterKodiak" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Russell Greene" w lines, 'lines_of_code_by_author.dat' using 1:9 title "William Jagels" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Markus Teufelberger" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Kamal Marhubi" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Michael Hackner" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Dirk Müller" w lines, 'lines_of_code_by_author.dat' using 1:14 title "AndrewRademacher" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Richard Cochran" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Yuchen Xie" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Wesley Williams" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Sean Warren" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Ryan Butler" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Nick Brachet" w lines, 'lines_of_code_by_author.dat' using 1:21 title "José Antonio Ramírez-Robredo" w lines
