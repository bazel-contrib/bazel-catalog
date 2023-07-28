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
plot 'commits_by_author.dat' using 1:2 title "Sass Bot" w lines, 'commits_by_author.dat' using 1:3 title "Jeremy Elbourn" w lines, 'commits_by_author.dat' using 1:4 title "Natalie Weizenbaum" w lines, 'commits_by_author.dat' using 1:5 title "Paul Gschwendtner" w lines, 'commits_by_author.dat' using 1:6 title "Damien Martin-Guillerez" w lines, 'commits_by_author.dat' using 1:7 title "Greg Magolan" w lines, 'commits_by_author.dat' using 1:8 title "Philipp Wollermann" w lines, 'commits_by_author.dat' using 1:9 title "Laurent Le Brun" w lines, 'commits_by_author.dat' using 1:10 title "Derek Perez" w lines, 'commits_by_author.dat' using 1:11 title "David Chen" w lines, 'commits_by_author.dat' using 1:12 title "Alex Eagle" w lines, 'commits_by_author.dat' using 1:13 title "katre" w lines, 'commits_by_author.dat' using 1:14 title "Vladimir Moskva" w lines, 'commits_by_author.dat' using 1:15 title "Keen Yee Liau" w lines, 'commits_by_author.dat' using 1:16 title "Justine Tunney" w lines, 'commits_by_author.dat' using 1:17 title "Hao Feng" w lines, 'commits_by_author.dat' using 1:18 title "Eric Stolten" w lines, 'commits_by_author.dat' using 1:19 title "Dmitry Lomov" w lines, 'commits_by_author.dat' using 1:20 title "David Z. Chen" w lines, 'commits_by_author.dat' using 1:21 title "Yun Peng" w lines
