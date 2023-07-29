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
plot 'commits_by_author.dat' using 1:2 title "Andreas Schuh" w lines, 'commits_by_author.dat' using 1:3 title "Craig Silverstein" w lines, 'commits_by_author.dat' using 1:4 title "dreamer.dead" w lines, 'commits_by_author.dat' using 1:5 title "Dreamer" w lines, 'commits_by_author.dat' using 1:6 title "Rosen Penev" w lines, 'commits_by_author.dat' using 1:7 title "Rob Earhart" w lines, 'commits_by_author.dat' using 1:8 title "Corentin Le Molgat" w lines, 'commits_by_author.dat' using 1:9 title "Andrew Gasparovic" w lines, 'commits_by_author.dat' using 1:10 title "panzhongxian" w lines, 'commits_by_author.dat' using 1:11 title "Swen Kooij" w lines, 'commits_by_author.dat' using 1:12 title "Sergey Sharybin" w lines, 'commits_by_author.dat' using 1:13 title "Photonios" w lines, 'commits_by_author.dat' using 1:14 title "Phil Christensen" w lines, 'commits_by_author.dat' using 1:15 title "John Khvatov" w lines, 'commits_by_author.dat' using 1:16 title "Biswapriyo Nath" w lines, 'commits_by_author.dat' using 1:17 title "Arkady Shapkin" w lines, 'commits_by_author.dat' using 1:18 title "Allan L. Bazinet" w lines, 'commits_by_author.dat' using 1:19 title "田欧" w lines, 'commits_by_author.dat' using 1:20 title "wuchenghui" w lines, 'commits_by_author.dat' using 1:21 title "unknown" w lines
