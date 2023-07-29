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
plot 'commits_by_author.dat' using 1:2 title "Jack O'Connor" w lines, 'commits_by_author.dat' using 1:3 title "Samuel Neves" w lines, 'commits_by_author.dat' using 1:4 title "JP Aumasson" w lines, 'commits_by_author.dat' using 1:5 title "Matthew Krupcale" w lines, 'commits_by_author.dat' using 1:6 title "phayes" w lines, 'commits_by_author.dat' using 1:7 title "rsdy" w lines, 'commits_by_author.dat' using 1:8 title "Henrik S. Gaßmann" w lines, 'commits_by_author.dat' using 1:9 title "SteveGremory" w lines, 'commits_by_author.dat' using 1:10 title "Zach Crownover" w lines, 'commits_by_author.dat' using 1:11 title "Cesar Eduardo Barros" w lines, 'commits_by_author.dat' using 1:12 title "sdlyyxy" w lines, 'commits_by_author.dat' using 1:13 title "TheVice" w lines, 'commits_by_author.dat' using 1:14 title "Shun Sakai" w lines, 'commits_by_author.dat' using 1:15 title "Ricardo Fernández Serrata" w lines, 'commits_by_author.dat' using 1:16 title "Jean-Philippe Aumasson" w lines, 'commits_by_author.dat' using 1:17 title "Elichai Turkel" w lines, 'commits_by_author.dat' using 1:18 title "joveian" w lines, 'commits_by_author.dat' using 1:19 title "jbis9051" w lines, 'commits_by_author.dat' using 1:20 title "Renzo Carbonara" w lines, 'commits_by_author.dat' using 1:21 title "Paul Grandperrin" w lines
