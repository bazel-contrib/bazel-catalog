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
plot 'lines_of_code_by_author.dat' using 1:2 title "Kristina" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Kristina Chodorow" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Paul Bethe" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Damien Martin-Guillerez" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Maxim Ermilov" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Matthew Suozzo" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Dig-Doug" w lines, 'lines_of_code_by_author.dat' using 1:9 title "David Chen" w lines, 'lines_of_code_by_author.dat' using 1:10 title "flamecoals" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Shachar Anchelovich" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Patrick Reynolds" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Jakob Buchgraber" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Googler" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Dmitry Lomov" w lines, 'lines_of_code_by_author.dat' using 1:16 title "katre" w lines, 'lines_of_code_by_author.dat' using 1:17 title "auke-" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Vladimir Moskva" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Torgeir Helgevold" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Stewart Henderson" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Steren" w lines
