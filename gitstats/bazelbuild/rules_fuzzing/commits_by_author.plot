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
plot 'commits_by_author.dat' using 1:2 title "Stefan Bucur" w lines, 'commits_by_author.dat' using 1:3 title "Tengpeng" w lines, 'commits_by_author.dat' using 1:4 title "Fabian Meumertzheim" w lines, 'commits_by_author.dat' using 1:5 title "Xinhao Yuan" w lines, 'commits_by_author.dat' using 1:6 title "tengpeng" w lines, 'commits_by_author.dat' using 1:7 title "Robert Spier" w lines, 'commits_by_author.dat' using 1:8 title "Will Norris" w lines, 'commits_by_author.dat' using 1:9 title "Tiem Song" w lines, 'commits_by_author.dat' using 1:10 title "Sergey \"Shnatsel\" Davidoff" w lines, 'commits_by_author.dat' using 1:11 title "Sasan Tavakkol" w lines, 'commits_by_author.dat' using 1:12 title "Mizux" w lines, 'commits_by_author.dat' using 1:13 title "Minhaz Kazi" w lines, 'commits_by_author.dat' using 1:14 title "Julien Cretin" w lines, 'commits_by_author.dat' using 1:15 title "Julia Ferraioli" w lines, 'commits_by_author.dat' using 1:16 title "Grant Timmerman" w lines, 'commits_by_author.dat' using 1:17 title "Eugene Y. Q. Shen" w lines, 'commits_by_author.dat' using 1:18 title "Eugene Kliuchnikov" w lines
