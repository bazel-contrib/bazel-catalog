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
plot 'commits_by_author.dat' using 1:2 title "Loïc Hoguin" w lines, 'commits_by_author.dat' using 1:3 title "Michael Klishin" w lines, 'commits_by_author.dat' using 1:4 title "Rin Kuryloski" w lines, 'commits_by_author.dat' using 1:5 title "Michal Slaski" w lines, 'commits_by_author.dat' using 1:6 title "Spring Operator" w lines, 'commits_by_author.dat' using 1:7 title "Ilya Khaprov" w lines, 'commits_by_author.dat' using 1:8 title "GitHub" w lines, 'commits_by_author.dat' using 1:9 title "vkatsuba" w lines, 'commits_by_author.dat' using 1:10 title "Luke Bakken" w lines, 'commits_by_author.dat' using 1:11 title "Louis-Philippe Gauthier" w lines, 'commits_by_author.dat' using 1:12 title "Kian-Meng Ang" w lines
