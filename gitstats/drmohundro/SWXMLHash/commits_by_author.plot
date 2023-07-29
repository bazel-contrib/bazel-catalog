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
plot 'commits_by_author.dat' using 1:2 title "David Mohundro" w lines, 'commits_by_author.dat' using 1:3 title "Norio Nomura" w lines, 'commits_by_author.dat' using 1:4 title "ncreated" w lines, 'commits_by_author.dat' using 1:5 title "Geoff Amey" w lines, 'commits_by_author.dat' using 1:6 title "JP Simard" w lines, 'commits_by_author.dat' using 1:7 title "Stefan Trauth" w lines, 'commits_by_author.dat' using 1:8 title "woolie" w lines, 'commits_by_author.dat' using 1:9 title "Saleem Abdulrasool" w lines, 'commits_by_author.dat' using 1:10 title "Paul Fechner" w lines, 'commits_by_author.dat' using 1:11 title "Martin Púčik" w lines, 'commits_by_author.dat' using 1:12 title "Maciek Grzybowski" w lines, 'commits_by_author.dat' using 1:13 title "thomas-em" w lines, 'commits_by_author.dat' using 1:14 title "Steven Woolgar" w lines, 'commits_by_author.dat' using 1:15 title "Martin Pucik" w lines, 'commits_by_author.dat' using 1:16 title "Christian Steffens" w lines, 'commits_by_author.dat' using 1:17 title "Andrew Romanov" w lines, 'commits_by_author.dat' using 1:18 title "Zheng Li" w lines, 'commits_by_author.dat' using 1:19 title "Tomas Sliz" w lines, 'commits_by_author.dat' using 1:20 title "Michael Pulsifer" w lines, 'commits_by_author.dat' using 1:21 title "Leo Mehlig" w lines
