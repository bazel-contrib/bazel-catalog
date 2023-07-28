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
plot 'lines_of_code_by_author.dat' using 1:2 title "Justine Tunney" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Andy Hochhaus" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Goktug Gokdogan" w lines, 'lines_of_code_by_author.dat' using 1:5 title "jart" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Yannic" w lines, 'lines_of_code_by_author.dat' using 1:7 title "David Ostrovsky" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Rob Figueiredo" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Julien Dramaix" w lines, 'lines_of_code_by_author.dat' using 1:10 title "John Lenz" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Ben Lickly" w lines, 'lines_of_code_by_author.dat' using 1:12 title "hochhaus" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Laurent Le Brun" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Dmitry Lomov" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Chris Povirk" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Alex Eagle" w lines, 'lines_of_code_by_author.dat' using 1:17 title "cushon" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Philipp Wollermann" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Paul Cody Johnston" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Nick Reid" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Laura Harker" w lines
