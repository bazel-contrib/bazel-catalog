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
plot 'lines_of_code_by_author.dat' using 1:2 title "Martin Hořeňovský" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Phil Nash" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Clare Macrae" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Martin Moene" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Jozef Grajciar" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Kosta" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Phil nash" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Andy Sawyer" w lines, 'lines_of_code_by_author.dat' using 1:10 title "philsquared" w lines, 'lines_of_code_by_author.dat' using 1:11 title "offa" w lines, 'lines_of_code_by_author.dat' using 1:12 title "dvirtz" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Neal Coombes" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Baruch Burstein" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Axel Huebl" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Vertexwahn" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Pfiffikus" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Dimitrij Mijoski" w lines, 'lines_of_code_by_author.dat' using 1:19 title "David Seifert" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Vadim Zeitlin" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Uilian Ries" w lines