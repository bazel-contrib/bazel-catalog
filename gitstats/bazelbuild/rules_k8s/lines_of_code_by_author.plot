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
plot 'lines_of_code_by_author.dat' using 1:2 title "Renovate Bot" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Matt Moore" w lines, 'lines_of_code_by_author.dat' using 1:4 title "WhiteSource Renovate" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Suvanjan Mukherjee" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Nicolas Lopez" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Erick Fejta" w lines, 'lines_of_code_by_author.dat' using 1:8 title "mattmoor" w lines, 'lines_of_code_by_author.dat' using 1:9 title "alex1545" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Sean Chase" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Stefan Sauer" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Marius Grigoriu" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Yu YI" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Yoshi Yamaguchi" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Xin" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Vladimir Moskva" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Sam Schlegel" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Markus Padourek" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Laurent Le Brun" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Benjamin Staffin" w lines, 'lines_of_code_by_author.dat' using 1:21 title "___" w lines
