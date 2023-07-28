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
plot 'commits_by_author.dat' using 1:2 title "Jay Conrod" w lines, 'commits_by_author.dat' using 1:3 title "Ian Cottrell" w lines, 'commits_by_author.dat' using 1:4 title "Paul Bethe" w lines, 'commits_by_author.dat' using 1:5 title "Yuki Yugui Sonoda" w lines, 'commits_by_author.dat' using 1:6 title "Steeve Morin" w lines, 'commits_by_author.dat' using 1:7 title "Zhongpeng Lin" w lines, 'commits_by_author.dat' using 1:8 title "Rob Figueiredo" w lines, 'commits_by_author.dat' using 1:9 title "Jeff Hodges" w lines, 'commits_by_author.dat' using 1:10 title "Andy Hochhaus" w lines, 'commits_by_author.dat' using 1:11 title "Siddhartha Bagaria" w lines, 'commits_by_author.dat' using 1:12 title "Mike Danese" w lines, 'commits_by_author.dat' using 1:13 title "Han-Wen Nienhuys" w lines, 'commits_by_author.dat' using 1:14 title "Robbert van Ginkel" w lines, 'commits_by_author.dat' using 1:15 title "Philipp Stephani" w lines, 'commits_by_author.dat' using 1:16 title "Mikhail Mazurskiy" w lines, 'commits_by_author.dat' using 1:17 title "Andrew Z Allen" w lines, 'commits_by_author.dat' using 1:18 title "Damien Martin-Guillerez" w lines, 'commits_by_author.dat' using 1:19 title "jmillikin-stripe" w lines, 'commits_by_author.dat' using 1:20 title "Pascal Muetschard" w lines, 'commits_by_author.dat' using 1:21 title "Kristina Chodorow" w lines
