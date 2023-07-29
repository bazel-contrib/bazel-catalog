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
plot 'commits_by_author.dat' using 1:2 title "luben karavelov" w lines, 'commits_by_author.dat' using 1:3 title "Luben Karavelov" w lines, 'commits_by_author.dat' using 1:4 title "Davy Landman" w lines, 'commits_by_author.dat' using 1:5 title "Benjamin Peterson" w lines, 'commits_by_author.dat' using 1:6 title "Adam Nelson" w lines, 'commits_by_author.dat' using 1:7 title "Morten Grouleff" w lines, 'commits_by_author.dat' using 1:8 title "expressoCoder" w lines, 'commits_by_author.dat' using 1:9 title "Marián Konček" w lines, 'commits_by_author.dat' using 1:10 title "Hari Rangarajan" w lines, 'commits_by_author.dat' using 1:11 title "Divij Vaidya" w lines, 'commits_by_author.dat' using 1:12 title "Jonathan Albrecht" w lines, 'commits_by_author.dat' using 1:13 title "James Yuzawa" w lines, 'commits_by_author.dat' using 1:14 title "Łukasz Jernaś" w lines, 'commits_by_author.dat' using 1:15 title "luben" w lines, 'commits_by_author.dat' using 1:16 title "dilipkasana" w lines, 'commits_by_author.dat' using 1:17 title "Roman Leventov" w lines, 'commits_by_author.dat' using 1:18 title "Richard DiCroce" w lines, 'commits_by_author.dat' using 1:19 title "Matt Lawrence" w lines, 'commits_by_author.dat' using 1:20 title "Jeffrey Tolar" w lines, 'commits_by_author.dat' using 1:21 title "Dinesh A. Joshi" w lines
