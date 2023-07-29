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
plot 'commits_by_author.dat' using 1:2 title "Yang Tse" w lines, 'commits_by_author.dat' using 1:3 title "Daniel Stenberg" w lines, 'commits_by_author.dat' using 1:4 title "David Drysdale" w lines, 'commits_by_author.dat' using 1:5 title "Gisle Vanem" w lines, 'commits_by_author.dat' using 1:6 title "bradh352" w lines, 'commits_by_author.dat' using 1:7 title "Brad House" w lines, 'commits_by_author.dat' using 1:8 title "Gunter Knauf" w lines, 'commits_by_author.dat' using 1:9 title "Steinar H. Gunderson" w lines, 'commits_by_author.dat' using 1:10 title "Guenter Knauf" w lines, 'commits_by_author.dat' using 1:11 title "Gregor Jasny" w lines, 'commits_by_author.dat' using 1:12 title "Jakub Hrozek" w lines, 'commits_by_author.dat' using 1:13 title "Dominick Meglio" w lines, 'commits_by_author.dat' using 1:14 title "Dan Fandrich" w lines, 'commits_by_author.dat' using 1:15 title "Ben Greear" w lines, 'commits_by_author.dat' using 1:16 title "Ben Noordhuis" w lines, 'commits_by_author.dat' using 1:17 title "Christian Ammer" w lines, 'commits_by_author.dat' using 1:18 title "Andrew Selivanov" w lines, 'commits_by_author.dat' using 1:19 title "Alexander Klauer" w lines, 'commits_by_author.dat' using 1:20 title "lifenjoiner" w lines, 'commits_by_author.dat' using 1:21 title "Stephen Sorley" w lines
