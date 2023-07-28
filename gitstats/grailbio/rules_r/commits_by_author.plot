set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'commits_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Commits"
set xtics rotate
set bmargin 6
plot 'commits_by_author.dat' using 1:2 title "Siddhartha Bagaria" w lines, 'commits_by_author.dat' using 1:3 title "Hadrien Chauvin" w lines, 'commits_by_author.dat' using 1:4 title "Jesse Schalken" w lines, 'commits_by_author.dat' using 1:5 title "forestfang-stripe" w lines, 'commits_by_author.dat' using 1:6 title "Subhachandra Chandra" w lines, 'commits_by_author.dat' using 1:7 title "Michael Ward" w lines, 'commits_by_author.dat' using 1:8 title "Leonhard Markert" w lines, 'commits_by_author.dat' using 1:9 title "John Millikin" w lines, 'commits_by_author.dat' using 1:10 title "Hyunsung John Kim" w lines, 'commits_by_author.dat' using 1:11 title "Dirk Eddelbuettel" w lines, 'commits_by_author.dat' using 1:12 title "Darya Filippova" w lines, 'commits_by_author.dat' using 1:13 title "Collin Melton" w lines, 'commits_by_author.dat' using 1:14 title "Carlo Cosenza" w lines
