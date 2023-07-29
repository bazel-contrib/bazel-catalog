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
plot 'commits_by_author.dat' using 1:2 title "c-parsons" w lines, 'commits_by_author.dat' using 1:3 title "David Z. Chen" w lines, 'commits_by_author.dat' using 1:4 title "David Chen" w lines, 'commits_by_author.dat' using 1:5 title "kendalllaneee" w lines, 'commits_by_author.dat' using 1:6 title "blossommojekwu" w lines, 'commits_by_author.dat' using 1:7 title "Nathan Herring" w lines, 'commits_by_author.dat' using 1:8 title "Laurent Le Brun" w lines, 'commits_by_author.dat' using 1:9 title "Mathieu Boespflug" w lines, 'commits_by_author.dat' using 1:10 title "Jon Brandvein" w lines, 'commits_by_author.dat' using 1:11 title "Vladimir Moskva" w lines, 'commits_by_author.dat' using 1:12 title "Philipp Wollermann" w lines, 'commits_by_author.dat' using 1:13 title "László Csomor" w lines, 'commits_by_author.dat' using 1:14 title "Alexandre Rostovtsev" w lines, 'commits_by_author.dat' using 1:15 title "ahippler" w lines, 'commits_by_author.dat' using 1:16 title "Mark Karpov" w lines, 'commits_by_author.dat' using 1:17 title "Marc Fisher" w lines, 'commits_by_author.dat' using 1:18 title "Ilya Sherman" w lines, 'commits_by_author.dat' using 1:19 title "Dmitry Lomov" w lines, 'commits_by_author.dat' using 1:20 title "Alex Eagle" w lines, 'commits_by_author.dat' using 1:21 title "pbatg" w lines
