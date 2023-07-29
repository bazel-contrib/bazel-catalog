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
plot 'lines_of_code_by_author.dat' using 1:2 title "JP Simard" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Norio Nomura" w lines, 'lines_of_code_by_author.dat' using 1:4 title "John Fairhurst" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Saleem Abdulrasool" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Maxwell Elliott" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Keith Smiley" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Jeff Verkoeyen" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Samuel E. Giddins" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Paul Taykalo" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Marcelo Fabri" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Simone Civetta" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Sho Ikeda" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Paul Young" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Zheng Li" w lines, 'lines_of_code_by_author.dat' using 1:16 title "dependabot[bot]" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Tamas Lustyik" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Syo Ikeda" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Masayuki Yamaya" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Marcel Jackwerth" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Lukas Stührk" w lines
