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
plot 'lines_of_code_by_author.dat' using 1:2 title "Nick Kubala" w lines, 'lines_of_code_by_author.dat' using 1:3 title "dlorenc" w lines, 'lines_of_code_by_author.dat' using 1:4 title "dependabot[bot]" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Sharif Elgamal" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Appu" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Alex Eagle" w lines, 'lines_of_code_by_author.dat' using 1:8 title "tejal29" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Dan Lorenc" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Charles-Henri GUERIN" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Appu Goundan" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Yves Brissaud" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Weibo Chen" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Tom Cooper" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Sahin Yort" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Oliver Nocon" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Mike Eves" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Matt Moore" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Lauri Peltonen" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Eric Briand" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Dominik Jülg" w lines
