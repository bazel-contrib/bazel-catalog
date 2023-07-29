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
plot 'commits_by_author.dat' using 1:2 title "Nick Kubala" w lines, 'commits_by_author.dat' using 1:3 title "dlorenc" w lines, 'commits_by_author.dat' using 1:4 title "dependabot[bot]" w lines, 'commits_by_author.dat' using 1:5 title "Sharif Elgamal" w lines, 'commits_by_author.dat' using 1:6 title "Appu" w lines, 'commits_by_author.dat' using 1:7 title "tejal29" w lines, 'commits_by_author.dat' using 1:8 title "Dan Lorenc" w lines, 'commits_by_author.dat' using 1:9 title "Alex Eagle" w lines, 'commits_by_author.dat' using 1:10 title "Charles-Henri GUERIN" w lines, 'commits_by_author.dat' using 1:11 title "Appu Goundan" w lines, 'commits_by_author.dat' using 1:12 title "Yves Brissaud" w lines, 'commits_by_author.dat' using 1:13 title "Weibo Chen" w lines, 'commits_by_author.dat' using 1:14 title "Tom Cooper" w lines, 'commits_by_author.dat' using 1:15 title "Sahin Yort" w lines, 'commits_by_author.dat' using 1:16 title "Oliver Nocon" w lines, 'commits_by_author.dat' using 1:17 title "Mike Eves" w lines, 'commits_by_author.dat' using 1:18 title "Matt Moore" w lines, 'commits_by_author.dat' using 1:19 title "Lauri Peltonen" w lines, 'commits_by_author.dat' using 1:20 title "Eric Briand" w lines, 'commits_by_author.dat' using 1:21 title "Dominik Jülg" w lines
