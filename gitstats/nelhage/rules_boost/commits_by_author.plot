set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'commits_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Commits"
set xtics rotate
set bmargin 6
plot 'commits_by_author.dat' using 1:2 title "Nelson Elhage" w lines, 'commits_by_author.dat' using 1:3 title "Rodrigo Queiro" w lines, 'commits_by_author.dat' using 1:4 title "Aaron Son" w lines, 'commits_by_author.dat' using 1:5 title "Per Grön" w lines, 'commits_by_author.dat' using 1:6 title "Julian Amann" w lines, 'commits_by_author.dat' using 1:7 title "ZacVawterKodiak" w lines, 'commits_by_author.dat' using 1:8 title "Russell Greene" w lines, 'commits_by_author.dat' using 1:9 title "William Jagels" w lines, 'commits_by_author.dat' using 1:10 title "Markus Teufelberger" w lines, 'commits_by_author.dat' using 1:11 title "Kamal Marhubi" w lines, 'commits_by_author.dat' using 1:12 title "Michael Hackner" w lines, 'commits_by_author.dat' using 1:13 title "Dirk Müller" w lines, 'commits_by_author.dat' using 1:14 title "AndrewRademacher" w lines, 'commits_by_author.dat' using 1:15 title "Richard Cochran" w lines, 'commits_by_author.dat' using 1:16 title "Yuchen Xie" w lines, 'commits_by_author.dat' using 1:17 title "Wesley Williams" w lines, 'commits_by_author.dat' using 1:18 title "Sean Warren" w lines, 'commits_by_author.dat' using 1:19 title "Ryan Butler" w lines, 'commits_by_author.dat' using 1:20 title "Nick Brachet" w lines, 'commits_by_author.dat' using 1:21 title "José Antonio Ramírez-Robredo" w lines
