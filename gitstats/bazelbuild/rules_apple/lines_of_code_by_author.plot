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
plot 'lines_of_code_by_author.dat' using 1:2 title "kaipi" w lines, 'lines_of_code_by_author.dat' using 1:3 title "thomasvl" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Keith Smiley" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Thomas Van Lenten" w lines, 'lines_of_code_by_author.dat' using 1:6 title "allevato" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Sergio Campama" w lines, 'lines_of_code_by_author.dat' using 1:8 title "A Googler" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Nicholas Levin" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Tony Allevato" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Googler" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Thi Doãn" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Swift/Apple Rules Gardener" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Dave Lee" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Kayla McArthur" w lines, 'lines_of_code_by_author.dat' using 1:16 title "dabelknap" w lines, 'lines_of_code_by_author.dat' using 1:17 title "dmishe" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Gabriel Giosia" w lines, 'lines_of_code_by_author.dat' using 1:19 title "cparsons" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Brentley Jones" w lines, 'lines_of_code_by_author.dat' using 1:21 title "davg" w lines
