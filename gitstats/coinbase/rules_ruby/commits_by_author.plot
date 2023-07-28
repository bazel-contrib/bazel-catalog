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
plot 'commits_by_author.dat' using 1:2 title "Konstantin Gredeskoul" w lines, 'commits_by_author.dat' using 1:3 title "Yuki Yugui Sonoda" w lines, 'commits_by_author.dat' using 1:4 title "graham jenson" w lines, 'commits_by_author.dat' using 1:5 title "dependabot[bot]" w lines, 'commits_by_author.dat' using 1:6 title "Yugui Sonoda" w lines, 'commits_by_author.dat' using 1:7 title "Graham Jenson" w lines, 'commits_by_author.dat' using 1:8 title "MATSUBARA Nobutada" w lines, 'commits_by_author.dat' using 1:9 title "Russell Sim" w lines, 'commits_by_author.dat' using 1:10 title "Laurenz" w lines, 'commits_by_author.dat' using 1:11 title "Minoru Mizutani" w lines, 'commits_by_author.dat' using 1:12 title "Tomas Volf" w lines, 'commits_by_author.dat' using 1:13 title "Takeo Sawada" w lines, 'commits_by_author.dat' using 1:14 title "RS" w lines, 'commits_by_author.dat' using 1:15 title "Nikolaus Wittenstein" w lines, 'commits_by_author.dat' using 1:16 title "Justus Tumacder" w lines, 'commits_by_author.dat' using 1:17 title "Fredrik Eckardt" w lines, 'commits_by_author.dat' using 1:18 title "Dominic Baratta" w lines, 'commits_by_author.dat' using 1:19 title "ClareCat" w lines, 'commits_by_author.dat' using 1:20 title "Alex Rodionov" w lines
