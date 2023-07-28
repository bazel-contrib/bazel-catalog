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
plot 'lines_of_code_by_author.dat' using 1:2 title "Googler" w lines, 'lines_of_code_by_author.dat' using 1:3 title "hlopko" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Copybara-Service" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Marcel Hlopko" w lines, 'lines_of_code_by_author.dat' using 1:6 title "rosica" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Andrzej Głuszak" w lines, 'lines_of_code_by_author.dat' using 1:8 title "cpeyser" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Florian Weikert" w lines, 'lines_of_code_by_author.dat' using 1:10 title "klimek" w lines, 'lines_of_code_by_author.dat' using 1:11 title "dmarting" w lines, 'lines_of_code_by_author.dat' using 1:12 title "John Laxson" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Artur Dryomov" w lines, 'lines_of_code_by_author.dat' using 1:14 title "fweikert" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Keith Smiley" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Greg Estren" w lines, 'lines_of_code_by_author.dat' using 1:17 title "philwo" w lines, 'lines_of_code_by_author.dat' using 1:18 title "oquenchil" w lines, 'lines_of_code_by_author.dat' using 1:19 title "lberki" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Renovate Bot" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Benjamin Peterson" w lines
