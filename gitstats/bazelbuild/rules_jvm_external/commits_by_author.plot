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
plot 'commits_by_author.dat' using 1:2 title "Jin" w lines, 'commits_by_author.dat' using 1:3 title "Jingwen Chen" w lines, 'commits_by_author.dat' using 1:4 title "Jingwen" w lines, 'commits_by_author.dat' using 1:5 title "cheister" w lines, 'commits_by_author.dat' using 1:6 title "Simon Stewart" w lines, 'commits_by_author.dat' using 1:7 title "Adam Michael" w lines, 'commits_by_author.dat' using 1:8 title "Justin Wei" w lines, 'commits_by_author.dat' using 1:9 title "utzcoz" w lines, 'commits_by_author.dat' using 1:10 title "Gibson Fahnestock" w lines, 'commits_by_author.dat' using 1:11 title "Sebastian Mandrean" w lines, 'commits_by_author.dat' using 1:12 title "Ryan Beasley" w lines, 'commits_by_author.dat' using 1:13 title "Philipp Wollermann" w lines, 'commits_by_author.dat' using 1:14 title "Ivo List" w lines, 'commits_by_author.dat' using 1:15 title "Dmitry Ivankov" w lines, 'commits_by_author.dat' using 1:16 title "Bor Kae Hwang" w lines, 'commits_by_author.dat' using 1:17 title "Ben Lee" w lines, 'commits_by_author.dat' using 1:18 title "Artem Zinnatullin :slowpoke" w lines, 'commits_by_author.dat' using 1:19 title "Alex Humesky" w lines, 'commits_by_author.dat' using 1:20 title "yrom" w lines, 'commits_by_author.dat' using 1:21 title "divanorama" w lines
