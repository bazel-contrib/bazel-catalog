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
plot 'lines_of_code_by_author.dat' using 1:2 title "Alex Eagle" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Greg Magolan" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Jason Bedard" w lines, 'lines_of_code_by_author.dat' using 1:5 title "renovate[bot]" w lines, 'lines_of_code_by_author.dat' using 1:6 title "shooj4aegohbaivo" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Jonathan Rudenberg" w lines, 'lines_of_code_by_author.dat' using 1:8 title "realtimetodie" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Matt Mackay" w lines, 'lines_of_code_by_author.dat' using 1:10 title "wtgtybhertgeghgtwtg" w lines, 'lines_of_code_by_author.dat' using 1:11 title "tae1eim0meenejae" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Nick Mazuk" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Mark Dittmer" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Konstantin Zadorozhny" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Derek Cormier" w lines, 'lines_of_code_by_author.dat' using 1:16 title "David Zbarsky" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Brandon Duffany" w lines
