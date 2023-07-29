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
plot 'commits_by_author.dat' using 1:2 title "Daniel Wagner-Hall" w lines, 'commits_by_author.dat' using 1:3 title "Simon Stewart" w lines, 'commits_by_author.dat' using 1:4 title "Thomas Jones-Low" w lines, 'commits_by_author.dat' using 1:5 title "Régis Desgroppes" w lines, 'commits_by_author.dat' using 1:6 title "Steve Barrau" w lines, 'commits_by_author.dat' using 1:7 title "Fabian Meumertzheim" w lines, 'commits_by_author.dat' using 1:8 title "Simon Mavi Stewart" w lines, 'commits_by_author.dat' using 1:9 title "Borja Lorente" w lines, 'commits_by_author.dat' using 1:10 title "Alex Eagle" w lines, 'commits_by_author.dat' using 1:11 title "Ted Kaplan" w lines, 'commits_by_author.dat' using 1:12 title "Knut Eirik Leira Hjelle" w lines, 'commits_by_author.dat' using 1:13 title "Ignas Mikalajūnas" w lines, 'commits_by_author.dat' using 1:14 title "robertgates55" w lines, 'commits_by_author.dat' using 1:15 title "Steffen Hanikel" w lines, 'commits_by_author.dat' using 1:16 title "Rogan Morrow" w lines, 'commits_by_author.dat' using 1:17 title "Regis Desgroppes" w lines, 'commits_by_author.dat' using 1:18 title "Marc Philipp" w lines, 'commits_by_author.dat' using 1:19 title "Luan Gong" w lines, 'commits_by_author.dat' using 1:20 title "Lan Yao" w lines, 'commits_by_author.dat' using 1:21 title "Halil İbrahim Şener" w lines
