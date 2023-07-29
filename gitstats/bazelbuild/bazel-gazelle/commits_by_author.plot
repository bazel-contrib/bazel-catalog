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
plot 'commits_by_author.dat' using 1:2 title "Jay Conrod" w lines, 'commits_by_author.dat' using 1:3 title "Zhongpeng Lin" w lines, 'commits_by_author.dat' using 1:4 title "Brandon Lico" w lines, 'commits_by_author.dat' using 1:5 title "Rob Figueiredo" w lines, 'commits_by_author.dat' using 1:6 title "Tanya Bouman" w lines, 'commits_by_author.dat' using 1:7 title "Tyler French" w lines, 'commits_by_author.dat' using 1:8 title "Andrew Z Allen" w lines, 'commits_by_author.dat' using 1:9 title "Alex Eagle" w lines, 'commits_by_author.dat' using 1:10 title "Siddhartha Bagaria" w lines, 'commits_by_author.dat' using 1:11 title "Mikhail Mazurskiy" w lines, 'commits_by_author.dat' using 1:12 title "Danny Wolf" w lines, 'commits_by_author.dat' using 1:13 title "tomlu" w lines, 'commits_by_author.dat' using 1:14 title "Ricky Pai" w lines, 'commits_by_author.dat' using 1:15 title "aptenodytes-forsteri" w lines, 'commits_by_author.dat' using 1:16 title "Yasushi Saito" w lines, 'commits_by_author.dat' using 1:17 title "Weixiao Huang" w lines, 'commits_by_author.dat' using 1:18 title "Wael Nasreddine" w lines, 'commits_by_author.dat' using 1:19 title "Steeve Morin" w lines, 'commits_by_author.dat' using 1:20 title "Scott Blum" w lines, 'commits_by_author.dat' using 1:21 title "Pascal Muetschard" w lines
