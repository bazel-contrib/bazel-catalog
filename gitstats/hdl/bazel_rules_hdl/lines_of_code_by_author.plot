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
plot 'lines_of_code_by_author.dat' using 1:2 title "Ravi Nanavati" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Per Grön" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Pawel Czarnecki" w lines, 'lines_of_code_by_author.dat' using 1:5 title "QuantamHD" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Stephen Tridgell" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Jesse Chan" w lines, 'lines_of_code_by_author.dat' using 1:8 title "grotival" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Ethan Mahintorabi" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Robert Winkler" w lines, 'lines_of_code_by_author.dat' using 1:11 title "tcal-x" w lines, 'lines_of_code_by_author.dat' using 1:12 title "bazel_rules_hdl team" w lines, 'lines_of_code_by_author.dat' using 1:13 title "ethanmoon" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Tim Callahan" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Tim Ansell" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Rachit Nigam" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Henner Zeller" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Chris Leary" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Rob Springer" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Paul Rigge" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Jose Renau" w lines
