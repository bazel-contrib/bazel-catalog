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
plot 'commits_by_author.dat' using 1:2 title "Sergiu Deitsch" w lines, 'commits_by_author.dat' using 1:3 title "" w lines, 'commits_by_author.dat' using 1:4 title "Fumitoshi Ukai" w lines, 'commits_by_author.dat' using 1:5 title "Shinichiro Hamaji" w lines, 'commits_by_author.dat' using 1:6 title "Rodrigo Queiro" w lines, 'commits_by_author.dat' using 1:7 title "Sergiu Dotenco" w lines, 'commits_by_author.dat' using 1:8 title "NeroBurner" w lines, 'commits_by_author.dat' using 1:9 title "Marco Wang" w lines, 'commits_by_author.dat' using 1:10 title "Andrew Schwartzmeyer" w lines, 'commits_by_author.dat' using 1:11 title "Zhongming Qu" w lines, 'commits_by_author.dat' using 1:12 title "Andrei Polushin" w lines, 'commits_by_author.dat' using 1:13 title "王振华 (WANG Zhenhua)" w lines, 'commits_by_author.dat' using 1:14 title "Marco" w lines, 'commits_by_author.dat' using 1:15 title "Luc Bertrand" w lines, 'commits_by_author.dat' using 1:16 title "Jim Ray" w lines, 'commits_by_author.dat' using 1:17 title "Brian Silverman" w lines, 'commits_by_author.dat' using 1:18 title "Arfrever Frehtes Taifersar Arahesis" w lines, 'commits_by_author.dat' using 1:19 title "huangqinjin" w lines, 'commits_by_author.dat' using 1:20 title "Sergey Sharybin" w lines, 'commits_by_author.dat' using 1:21 title "Roman Gershman" w lines
