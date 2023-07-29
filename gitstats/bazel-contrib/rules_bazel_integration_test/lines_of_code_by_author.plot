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
plot 'lines_of_code_by_author.dat' using 1:2 title "Chuck Grindel" w lines, 'lines_of_code_by_author.dat' using 1:3 title "renovate[bot]" w lines, 'lines_of_code_by_author.dat' using 1:4 title "auth-for-create-pull-request[bot]" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Daniel Wagner-Hall" w lines, 'lines_of_code_by_author.dat' using 1:6 title "cgrindel-app-token-generator[bot]" w lines, 'lines_of_code_by_author.dat' using 1:7 title "John Firebaugh" w lines, 'lines_of_code_by_author.dat' using 1:8 title "k1nkreet" w lines, 'lines_of_code_by_author.dat' using 1:9 title "John Cater" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Andreas Herrmann" w lines
