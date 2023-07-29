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
plot 'commits_by_author.dat' using 1:2 title "Brentley Jones" w lines, 'commits_by_author.dat' using 1:3 title "Chuck Grindel" w lines, 'commits_by_author.dat' using 1:4 title "Maxwell Elliott" w lines, 'commits_by_author.dat' using 1:5 title "Patrick Balestra" w lines, 'commits_by_author.dat' using 1:6 title "Chirag Ramani" w lines, 'commits_by_author.dat' using 1:7 title "JP Simard" w lines, 'commits_by_author.dat' using 1:8 title "Matt Robinson" w lines, 'commits_by_author.dat' using 1:9 title "Thi Doãn" w lines, 'commits_by_author.dat' using 1:10 title "Thiago Cruz" w lines, 'commits_by_author.dat' using 1:11 title "Erik Kerber" w lines, 'commits_by_author.dat' using 1:12 title "Luis Padron" w lines, 'commits_by_author.dat' using 1:13 title "Yongjin Cho" w lines, 'commits_by_author.dat' using 1:14 title "Ryo Aoyama" w lines, 'commits_by_author.dat' using 1:15 title "Keith Smiley" w lines, 'commits_by_author.dat' using 1:16 title "Sebastian Shanus" w lines, 'commits_by_author.dat' using 1:17 title "acbdev" w lines, 'commits_by_author.dat' using 1:18 title "Vadim Smal" w lines, 'commits_by_author.dat' using 1:19 title "Matt Pennig" w lines, 'commits_by_author.dat' using 1:20 title "Gabriel Féron" w lines, 'commits_by_author.dat' using 1:21 title "David-Lam" w lines
