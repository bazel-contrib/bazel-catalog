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
plot 'commits_by_author.dat' using 1:2 title "Andreas Herrmann" w lines, 'commits_by_author.dat' using 1:3 title "mergify[bot]" w lines, 'commits_by_author.dat' using 1:4 title "z8v" w lines, 'commits_by_author.dat' using 1:5 title "Clément Hurlin" w lines, 'commits_by_author.dat' using 1:6 title "Claudio Bley" w lines, 'commits_by_author.dat' using 1:7 title "Ben Radford" w lines, 'commits_by_author.dat' using 1:8 title "Mathieu Boespflug" w lines, 'commits_by_author.dat' using 1:9 title "dependabot[bot]" w lines, 'commits_by_author.dat' using 1:10 title "tshaynik" w lines, 'commits_by_author.dat' using 1:11 title "smelc" w lines, 'commits_by_author.dat' using 1:12 title "Yves-Stan Le Cornec" w lines, 'commits_by_author.dat' using 1:13 title "Daniel KT" w lines
