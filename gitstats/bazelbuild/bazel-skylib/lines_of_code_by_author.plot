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
plot 'lines_of_code_by_author.dat' using 1:2 title "Thomas Van Lenten" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Alexandre Rostovtsev" w lines, 'lines_of_code_by_author.dat' using 1:4 title "c-parsons" w lines, 'lines_of_code_by_author.dat' using 1:5 title "László Csomor" w lines, 'lines_of_code_by_author.dat' using 1:6 title "aiuto" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Laurent Le Brun" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Tony Allevato" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Julie" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Andrew Z Allen" w lines, 'lines_of_code_by_author.dat' using 1:11 title "dmaclach" w lines, 'lines_of_code_by_author.dat' using 1:12 title "bttk" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Geoffrey Martin-Noble" w lines, 'lines_of_code_by_author.dat' using 1:14 title "UebelAndre" w lines, 'lines_of_code_by_author.dat' using 1:15 title "TechSY730" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Samuel Freilich" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Nathan Herring" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Ivo List" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Greg" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Alex Eagle" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Vinh Tran" w lines
