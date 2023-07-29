set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'lines_of_code_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Lines"
set xtics rotate
set bmargin 6
plot 'lines_of_code_by_author.dat' using 1:2 title "luben karavelov" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Luben Karavelov" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Davy Landman" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Benjamin Peterson" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Adam Nelson" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Morten Grouleff" w lines, 'lines_of_code_by_author.dat' using 1:8 title "expressoCoder" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Marián Konček" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Hari Rangarajan" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Divij Vaidya" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Jonathan Albrecht" w lines, 'lines_of_code_by_author.dat' using 1:13 title "James Yuzawa" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Łukasz Jernaś" w lines, 'lines_of_code_by_author.dat' using 1:15 title "luben" w lines, 'lines_of_code_by_author.dat' using 1:16 title "dilipkasana" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Roman Leventov" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Richard DiCroce" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Matt Lawrence" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Jeffrey Tolar" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Dinesh A. Joshi" w lines
