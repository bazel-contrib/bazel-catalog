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
plot 'commits_by_author.dat' using 1:2 title "Niels Lohmann" w lines, 'commits_by_author.dat' using 1:3 title "Niels" w lines, 'commits_by_author.dat' using 1:4 title "Théo DELRIEU" w lines, 'commits_by_author.dat' using 1:5 title "Florian Albrechtskirchinger" w lines, 'commits_by_author.dat' using 1:6 title "chenguoping" w lines, 'commits_by_author.dat' using 1:7 title "Isaac Nickaein" w lines, 'commits_by_author.dat' using 1:8 title "Alex Astashyn" w lines, 'commits_by_author.dat' using 1:9 title "Julian Becker" w lines, 'commits_by_author.dat' using 1:10 title "Francois Chabot" w lines, 'commits_by_author.dat' using 1:11 title "pf" w lines, 'commits_by_author.dat' using 1:12 title "Thomas Braun" w lines, 'commits_by_author.dat' using 1:13 title "HenryLee" w lines, 'commits_by_author.dat' using 1:14 title "Anthony VH" w lines, 'commits_by_author.dat' using 1:15 title "Trevor Welsby" w lines, 'commits_by_author.dat' using 1:16 title "gatopeich" w lines, 'commits_by_author.dat' using 1:17 title "Raphael Isemann" w lines, 'commits_by_author.dat' using 1:18 title "Perry Kundert" w lines, 'commits_by_author.dat' using 1:19 title "Jamie Seward" w lines, 'commits_by_author.dat' using 1:20 title "dariomt" w lines, 'commits_by_author.dat' using 1:21 title "Guillaume Racicot" w lines
