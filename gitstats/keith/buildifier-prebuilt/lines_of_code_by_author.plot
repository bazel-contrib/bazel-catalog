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
plot 'lines_of_code_by_author.dat' using 1:2 title "Keith Smiley" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Chuck Grindel" w lines, 'lines_of_code_by_author.dat' using 1:4 title "buildifier-prebuilt-releases[bot]" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Erik Kerber" w lines, 'lines_of_code_by_author.dat' using 1:6 title "keith" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Jamison Lahman" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Gavin Zhao" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Fabian Meumertzheim" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Dan Halperin" w lines
