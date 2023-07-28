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
plot 'commits_by_author.dat' using 1:2 title "Justine Tunney" w lines, 'commits_by_author.dat' using 1:3 title "Andy Hochhaus" w lines, 'commits_by_author.dat' using 1:4 title "Goktug Gokdogan" w lines, 'commits_by_author.dat' using 1:5 title "jart" w lines, 'commits_by_author.dat' using 1:6 title "Yannic" w lines, 'commits_by_author.dat' using 1:7 title "David Ostrovsky" w lines, 'commits_by_author.dat' using 1:8 title "Rob Figueiredo" w lines, 'commits_by_author.dat' using 1:9 title "Julien Dramaix" w lines, 'commits_by_author.dat' using 1:10 title "John Lenz" w lines, 'commits_by_author.dat' using 1:11 title "Ben Lickly" w lines, 'commits_by_author.dat' using 1:12 title "hochhaus" w lines, 'commits_by_author.dat' using 1:13 title "Laurent Le Brun" w lines, 'commits_by_author.dat' using 1:14 title "Dmitry Lomov" w lines, 'commits_by_author.dat' using 1:15 title "Chris Povirk" w lines, 'commits_by_author.dat' using 1:16 title "Alex Eagle" w lines, 'commits_by_author.dat' using 1:17 title "cushon" w lines, 'commits_by_author.dat' using 1:18 title "Philipp Wollermann" w lines, 'commits_by_author.dat' using 1:19 title "Paul Cody Johnston" w lines, 'commits_by_author.dat' using 1:20 title "Nick Reid" w lines, 'commits_by_author.dat' using 1:21 title "Laura Harker" w lines
