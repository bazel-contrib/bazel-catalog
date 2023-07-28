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
plot 'lines_of_code_by_author.dat' using 1:2 title "Tomasz Strejczek" w lines, 'lines_of_code_by_author.dat' using 1:3 title "tomaszstrejczek" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Damir Tulepov" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Tomek Strejczek" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Jeremy Wall" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Paul Cody Johnston" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Jacob Parker" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Daniel P. Purkhús" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Damien Martin-Guillerez" w lines, 'lines_of_code_by_author.dat' using 1:11 title "David Z. Chen" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Kristina" w lines, 'lines_of_code_by_author.dat' using 1:13 title "nmalsang" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Iain Merrick" w lines, 'lines_of_code_by_author.dat' using 1:15 title "samhowes" w lines, 'lines_of_code_by_author.dat' using 1:16 title "jimevans" w lines, 'lines_of_code_by_author.dat' using 1:17 title "dependabot[bot]" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Philipp Wollermann" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Kristina Chodorow" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Ilya Klyuchnikov" w lines, 'lines_of_code_by_author.dat' using 1:21 title "tomdegoede" w lines
