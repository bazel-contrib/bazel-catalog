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
plot 'lines_of_code_by_author.dat' using 1:2 title "JP Simard" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Marcelo Fabri" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Norio Nomura" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Scott Hoyt" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Danny Mösch" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Ornithologist Coder" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Cihat Gündüz" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Keith Smiley" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Frederick Pietschmann" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Paul Taykalo" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Dalton Claybrook" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Samuel Susla" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Jeremy David Giesbrecht" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Kim de Vos" w lines, 'lines_of_code_by_author.dat' using 1:16 title "J Cheyo Jimenez" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Eric Horacek" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Martin Redington" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Javier Hernández" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Aaron McTavish" w lines, 'lines_of_code_by_author.dat' using 1:21 title "freak4pc" w lines
