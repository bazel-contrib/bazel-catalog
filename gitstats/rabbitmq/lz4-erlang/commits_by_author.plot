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
plot 'commits_by_author.dat' using 1:2 title "Rin Kuryloski" w lines, 'commits_by_author.dat' using 1:3 title "Michael Klishin" w lines, 'commits_by_author.dat' using 1:4 title "Loïc Hoguin" w lines, 'commits_by_author.dat' using 1:5 title "dependabot[bot]" w lines, 'commits_by_author.dat' using 1:6 title "Jean-Sébastien Pédron" w lines, 'commits_by_author.dat' using 1:7 title "Philip Kuryloski" w lines, 'commits_by_author.dat' using 1:8 title "Spring Operator" w lines, 'commits_by_author.dat' using 1:9 title "Luke Bakken" w lines, 'commits_by_author.dat' using 1:10 title "outddd" w lines, 'commits_by_author.dat' using 1:11 title "Tankut Şentürk" w lines
