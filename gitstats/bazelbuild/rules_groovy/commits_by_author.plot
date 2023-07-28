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
plot 'commits_by_author.dat' using 1:2 title "Erik Kuefler" w lines, 'commits_by_author.dat' using 1:3 title "Nicolas Lopez" w lines, 'commits_by_author.dat' using 1:4 title "David Chen" w lines, 'commits_by_author.dat' using 1:5 title "Damien Martin-Guillerez" w lines, 'commits_by_author.dat' using 1:6 title "Justine Tunney" w lines, 'commits_by_author.dat' using 1:7 title "Yun Peng" w lines, 'commits_by_author.dat' using 1:8 title "Vladimir Moskva" w lines, 'commits_by_author.dat' using 1:9 title "Ryan Beasley" w lines, 'commits_by_author.dat' using 1:10 title "Robbie McElrath" w lines, 'commits_by_author.dat' using 1:11 title "Philipp Wollermann" w lines, 'commits_by_author.dat' using 1:12 title "Marcel Hlopko" w lines, 'commits_by_author.dat' using 1:13 title "Kristina Chodorow" w lines, 'commits_by_author.dat' using 1:14 title "Jakob Buchgraber" w lines, 'commits_by_author.dat' using 1:15 title "matthewxperiel" w lines, 'commits_by_author.dat' using 1:16 title "Xùdōng Yáng" w lines, 'commits_by_author.dat' using 1:17 title "Xin" w lines, 'commits_by_author.dat' using 1:18 title "Jin" w lines, 'commits_by_author.dat' using 1:19 title "Gregg Donovan" w lines, 'commits_by_author.dat' using 1:20 title "Enrico" w lines, 'commits_by_author.dat' using 1:21 title "Dmitry Lomov" w lines
