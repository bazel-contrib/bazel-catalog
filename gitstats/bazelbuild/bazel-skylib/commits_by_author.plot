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
plot 'commits_by_author.dat' using 1:2 title "Thomas Van Lenten" w lines, 'commits_by_author.dat' using 1:3 title "Alexandre Rostovtsev" w lines, 'commits_by_author.dat' using 1:4 title "c-parsons" w lines, 'commits_by_author.dat' using 1:5 title "László Csomor" w lines, 'commits_by_author.dat' using 1:6 title "aiuto" w lines, 'commits_by_author.dat' using 1:7 title "Laurent Le Brun" w lines, 'commits_by_author.dat' using 1:8 title "Tony Allevato" w lines, 'commits_by_author.dat' using 1:9 title "Julie" w lines, 'commits_by_author.dat' using 1:10 title "Andrew Z Allen" w lines, 'commits_by_author.dat' using 1:11 title "dmaclach" w lines, 'commits_by_author.dat' using 1:12 title "bttk" w lines, 'commits_by_author.dat' using 1:13 title "Geoffrey Martin-Noble" w lines, 'commits_by_author.dat' using 1:14 title "UebelAndre" w lines, 'commits_by_author.dat' using 1:15 title "TechSY730" w lines, 'commits_by_author.dat' using 1:16 title "Samuel Freilich" w lines, 'commits_by_author.dat' using 1:17 title "Nathan Herring" w lines, 'commits_by_author.dat' using 1:18 title "Ivo List" w lines, 'commits_by_author.dat' using 1:19 title "Greg" w lines, 'commits_by_author.dat' using 1:20 title "Alex Eagle" w lines, 'commits_by_author.dat' using 1:21 title "Vinh Tran" w lines
