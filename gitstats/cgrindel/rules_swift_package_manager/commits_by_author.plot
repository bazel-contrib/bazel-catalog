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
plot 'commits_by_author.dat' using 1:2 title "renovate[bot]" w lines, 'commits_by_author.dat' using 1:3 title "Chuck Grindel" w lines, 'commits_by_author.dat' using 1:4 title "cgrindel-app-token-generator[bot]" w lines, 'commits_by_author.dat' using 1:5 title "cgrindel-self-hosted-renovate[bot]" w lines, 'commits_by_author.dat' using 1:6 title "Yume" w lines, 'commits_by_author.dat' using 1:7 title "Luis Padron" w lines, 'commits_by_author.dat' using 1:8 title "Eric Hsu" w lines, 'commits_by_author.dat' using 1:9 title "Eli Perkins" w lines
