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
plot 'commits_by_author.dat' using 1:2 title "Markus Padourek" w lines, 'commits_by_author.dat' using 1:3 title "David Chen" w lines, 'commits_by_author.dat' using 1:4 title "Steven E. Harris" w lines, 'commits_by_author.dat' using 1:5 title "David Z. Chen" w lines, 'commits_by_author.dat' using 1:6 title "Bo Shi" w lines, 'commits_by_author.dat' using 1:7 title "Dave Cunningham" w lines, 'commits_by_author.dat' using 1:8 title "Vladimir Moskva" w lines, 'commits_by_author.dat' using 1:9 title "Marius Grigoriu" w lines, 'commits_by_author.dat' using 1:10 title "Justine Tunney" w lines, 'commits_by_author.dat' using 1:11 title "Yuki Yugui Sonoda" w lines, 'commits_by_author.dat' using 1:12 title "Shimin Guo" w lines, 'commits_by_author.dat' using 1:13 title "Misha Seltzer" w lines, 'commits_by_author.dat' using 1:14 title "Kristina Chodorow" w lines, 'commits_by_author.dat' using 1:15 title "Damien Martin-Guillerez" w lines, 'commits_by_author.dat' using 1:16 title "Benjamin Staffin" w lines, 'commits_by_author.dat' using 1:17 title "吴少青" w lines, 'commits_by_author.dat' using 1:18 title "paiyar" w lines, 'commits_by_author.dat' using 1:19 title "jasongwartz" w lines, 'commits_by_author.dat' using 1:20 title "globegitter" w lines, 'commits_by_author.dat' using 1:21 title "bbreslauer" w lines
