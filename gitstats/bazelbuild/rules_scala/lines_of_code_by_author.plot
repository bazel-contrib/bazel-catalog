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
plot 'lines_of_code_by_author.dat' using 1:2 title "P. Oscar Boykin" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Ittai Zeidman" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Vaidas Pilkauskas" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Oscar Boykin" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Simonas Pinevičius" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Andy Scott" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Or Shachar" w lines, 'lines_of_code_by_author.dat' using 1:9 title "ianoc-stripe" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Jamie5" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Long Cao" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Igal Tabachnik" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Bor Kae Hwang" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Laurent Le Brun" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Johan Jern" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Damien Martin-Guillerez" w lines, 'lines_of_code_by_author.dat' using 1:17 title "andy g scott ☜" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Jonathan Coveney" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Chaoren Lin" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Argyris Zymnis" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Alex Beal" w lines
