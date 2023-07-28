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
plot 'lines_of_code_by_author.dat' using 1:2 title "Tony Allevato" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Keith Smiley" w lines, 'lines_of_code_by_author.dat' using 1:4 title "allevato" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Thomas Van Lenten" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Googler" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Thi Doãn" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Swift/Apple Rules Gardener" w lines, 'lines_of_code_by_author.dat' using 1:9 title "thomasvl" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Dave Lee" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Brentley Jones" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Samuel Giddins" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Lukacs T. Berki" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Alex Eagle" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Walter Lee" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Sergio Campama" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Philipp Wollermann" w lines, 'lines_of_code_by_author.dat' using 1:18 title "kaipi" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Jerry Marino" w lines, 'lines_of_code_by_author.dat' using 1:20 title "fed" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Steeve Morin" w lines
