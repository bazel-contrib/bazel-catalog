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
plot 'commits_by_author.dat' using 1:2 title "Erik Kuefler" w lines, 'commits_by_author.dat' using 1:3 title "Vladimir Moskva" w lines, 'commits_by_author.dat' using 1:4 title "Philipp Wollermann" w lines, 'commits_by_author.dat' using 1:5 title "Yun Peng" w lines, 'commits_by_author.dat' using 1:6 title "Xùdōng Yáng" w lines, 'commits_by_author.dat' using 1:7 title "Laurent Le Brun" w lines, 'commits_by_author.dat' using 1:8 title "Kristina Chodorow" w lines, 'commits_by_author.dat' using 1:9 title "Jakob Buchgraber" w lines, 'commits_by_author.dat' using 1:10 title "Dmitry Lomov" w lines, 'commits_by_author.dat' using 1:11 title "Danna Kelmer" w lines, 'commits_by_author.dat' using 1:12 title "Damien Martin-Guillerez" w lines, 'commits_by_author.dat' using 1:13 title "Auke Schrijnen" w lines, 'commits_by_author.dat' using 1:14 title "Andrea Spadaccini" w lines
