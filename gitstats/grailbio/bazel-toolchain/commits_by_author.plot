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
plot 'commits_by_author.dat' using 1:2 title "Siddhartha Bagaria" w lines, 'commits_by_author.dat' using 1:3 title "James Sharpe" w lines, 'commits_by_author.dat' using 1:4 title "Rahul Butani" w lines, 'commits_by_author.dat' using 1:5 title "Zhanyong Wan" w lines, 'commits_by_author.dat' using 1:6 title "Trevor Hickey" w lines, 'commits_by_author.dat' using 1:7 title "Marcus Boerger" w lines, 'commits_by_author.dat' using 1:8 title "Gary Miguel" w lines, 'commits_by_author.dat' using 1:9 title "jpieper" w lines, 'commits_by_author.dat' using 1:10 title "Yaz Saito" w lines, 'commits_by_author.dat' using 1:11 title "Yasushi Saito" w lines, 'commits_by_author.dat' using 1:12 title "William Izzo" w lines, 'commits_by_author.dat' using 1:13 title "Thulio Ferraz Assis" w lines, 'commits_by_author.dat' using 1:14 title "Oliver Lee" w lines, 'commits_by_author.dat' using 1:15 title "Marcus Hines" w lines, 'commits_by_author.dat' using 1:16 title "Marc Plano-Lesay" w lines, 'commits_by_author.dat' using 1:17 title "Liu Jiaming" w lines, 'commits_by_author.dat' using 1:18 title "Dorian Peake" w lines, 'commits_by_author.dat' using 1:19 title "sabarabc" w lines, 'commits_by_author.dat' using 1:20 title "alexeiser" w lines, 'commits_by_author.dat' using 1:21 title "Yong Tang" w lines
