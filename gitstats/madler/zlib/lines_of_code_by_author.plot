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
plot 'lines_of_code_by_author.dat' using 1:2 title "Mark Adler" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Nathan Moinvaziri" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Christoph J. Thompson" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Jonathan Nieder" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Peter Kuemmel" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Will Glynn" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Török Edwin" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Thomas Roß" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Birunthan Mohanathas" w lines, 'lines_of_code_by_author.dat' using 1:11 title "takacsd" w lines, 'lines_of_code_by_author.dat' using 1:12 title "jK" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Tor Lillqvist" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Nathan Phillip Brink" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Mike Frysinger" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Like Ma" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Jason Williams" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Greg Domjan" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Fredrik Orderud" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Enrico Weigelt, metux IT service" w lines, 'lines_of_code_by_author.dat' using 1:21 title "E. Timothy Uy" w lines
