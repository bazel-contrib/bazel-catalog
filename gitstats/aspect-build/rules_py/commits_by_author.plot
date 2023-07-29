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
plot 'commits_by_author.dat' using 1:2 title "renovate[bot]" w lines, 'commits_by_author.dat' using 1:3 title "Matt Mackay" w lines, 'commits_by_author.dat' using 1:4 title "Alex Eagle" w lines, 'commits_by_author.dat' using 1:5 title "Thulio Ferraz Assis" w lines, 'commits_by_author.dat' using 1:6 title "Greg Magolan" w lines, 'commits_by_author.dat' using 1:7 title "Milan Vukov" w lines, 'commits_by_author.dat' using 1:8 title "Travis Ellett" w lines, 'commits_by_author.dat' using 1:9 title "David Zbarsky" w lines
