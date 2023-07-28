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
plot 'commits_by_author.dat' using 1:2 title "P. Oscar Boykin" w lines, 'commits_by_author.dat' using 1:3 title "Ittai Zeidman" w lines, 'commits_by_author.dat' using 1:4 title "Vaidas Pilkauskas" w lines, 'commits_by_author.dat' using 1:5 title "Oscar Boykin" w lines, 'commits_by_author.dat' using 1:6 title "Simonas Pinevičius" w lines, 'commits_by_author.dat' using 1:7 title "Andy Scott" w lines, 'commits_by_author.dat' using 1:8 title "Or Shachar" w lines, 'commits_by_author.dat' using 1:9 title "ianoc-stripe" w lines, 'commits_by_author.dat' using 1:10 title "Jamie5" w lines, 'commits_by_author.dat' using 1:11 title "Long Cao" w lines, 'commits_by_author.dat' using 1:12 title "Igal Tabachnik" w lines, 'commits_by_author.dat' using 1:13 title "Bor Kae Hwang" w lines, 'commits_by_author.dat' using 1:14 title "Laurent Le Brun" w lines, 'commits_by_author.dat' using 1:15 title "Johan Jern" w lines, 'commits_by_author.dat' using 1:16 title "Damien Martin-Guillerez" w lines, 'commits_by_author.dat' using 1:17 title "andy g scott ☜" w lines, 'commits_by_author.dat' using 1:18 title "Jonathan Coveney" w lines, 'commits_by_author.dat' using 1:19 title "Chaoren Lin" w lines, 'commits_by_author.dat' using 1:20 title "Argyris Zymnis" w lines, 'commits_by_author.dat' using 1:21 title "Alex Beal" w lines
