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
plot 'commits_by_author.dat' using 1:2 title "Dave Cunningham" w lines, 'commits_by_author.dat' using 1:3 title "Stanisław Barzowski" w lines, 'commits_by_author.dat' using 1:4 title "David Z. Chen" w lines, 'commits_by_author.dat' using 1:5 title "Mike Danese" w lines, 'commits_by_author.dat' using 1:6 title "Rohit Jangid" w lines, 'commits_by_author.dat' using 1:7 title "Benjamin Staffin" w lines, 'commits_by_author.dat' using 1:8 title "Ryan Gonzalez" w lines, 'commits_by_author.dat' using 1:9 title "Russell O'Connor" w lines, 'commits_by_author.dat' using 1:10 title "Doug Muir" w lines, 'commits_by_author.dat' using 1:11 title "Shimin Guo" w lines, 'commits_by_author.dat' using 1:12 title "Sheridan C Rawlins" w lines, 'commits_by_author.dat' using 1:13 title "Pavel Timofeev" w lines, 'commits_by_author.dat' using 1:14 title "Kasumi Hanazuki" w lines, 'commits_by_author.dat' using 1:15 title "zhaokai" w lines, 'commits_by_author.dat' using 1:16 title "osher" w lines, 'commits_by_author.dat' using 1:17 title "Yuchen Ying" w lines, 'commits_by_author.dat' using 1:18 title "Russell Howe" w lines, 'commits_by_author.dat' using 1:19 title "Morten Mjelva" w lines, 'commits_by_author.dat' using 1:20 title "Mo Zhou" w lines, 'commits_by_author.dat' using 1:21 title "Maxim Ivanov" w lines
