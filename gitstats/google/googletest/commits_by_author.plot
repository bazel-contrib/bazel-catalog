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
plot 'commits_by_author.dat' using 1:2 title "Gennadiy Civil" w lines, 'commits_by_author.dat' using 1:3 title "Abseil Team" w lines, 'commits_by_author.dat' using 1:4 title "zhanyong.wan" w lines, 'commits_by_author.dat' using 1:5 title "Billy Donahue" w lines, 'commits_by_author.dat' using 1:6 title "vladlosev" w lines, 'commits_by_author.dat' using 1:7 title "kosak" w lines, 'commits_by_author.dat' using 1:8 title "misterg" w lines, 'commits_by_author.dat' using 1:9 title "Copybara-Service" w lines, 'commits_by_author.dat' using 1:10 title "Krystian Kuzniarek" w lines, 'commits_by_author.dat' using 1:11 title "Derek Mauro" w lines, 'commits_by_author.dat' using 1:12 title "Herbert Thielen" w lines, 'commits_by_author.dat' using 1:13 title "shiqian" w lines, 'commits_by_author.dat' using 1:14 title "Tom Hughes" w lines, 'commits_by_author.dat' using 1:15 title "dmauro" w lines, 'commits_by_author.dat' using 1:16 title "Jerry Turcios" w lines, 'commits_by_author.dat' using 1:17 title "Dino Radakovic" w lines, 'commits_by_author.dat' using 1:18 title "Carlos O'Ryan" w lines, 'commits_by_author.dat' using 1:19 title "vslashg" w lines, 'commits_by_author.dat' using 1:20 title "Mark Barolak" w lines, 'commits_by_author.dat' using 1:21 title "Gennadiy Rozental" w lines
