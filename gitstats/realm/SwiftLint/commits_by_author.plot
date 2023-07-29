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
plot 'commits_by_author.dat' using 1:2 title "JP Simard" w lines, 'commits_by_author.dat' using 1:3 title "Marcelo Fabri" w lines, 'commits_by_author.dat' using 1:4 title "Norio Nomura" w lines, 'commits_by_author.dat' using 1:5 title "Scott Hoyt" w lines, 'commits_by_author.dat' using 1:6 title "Danny Mösch" w lines, 'commits_by_author.dat' using 1:7 title "Ornithologist Coder" w lines, 'commits_by_author.dat' using 1:8 title "Cihat Gündüz" w lines, 'commits_by_author.dat' using 1:9 title "Keith Smiley" w lines, 'commits_by_author.dat' using 1:10 title "Frederick Pietschmann" w lines, 'commits_by_author.dat' using 1:11 title "Paul Taykalo" w lines, 'commits_by_author.dat' using 1:12 title "Dalton Claybrook" w lines, 'commits_by_author.dat' using 1:13 title "Samuel Susla" w lines, 'commits_by_author.dat' using 1:14 title "Jeremy David Giesbrecht" w lines, 'commits_by_author.dat' using 1:15 title "Kim de Vos" w lines, 'commits_by_author.dat' using 1:16 title "J Cheyo Jimenez" w lines, 'commits_by_author.dat' using 1:17 title "Eric Horacek" w lines, 'commits_by_author.dat' using 1:18 title "Martin Redington" w lines, 'commits_by_author.dat' using 1:19 title "Javier Hernández" w lines, 'commits_by_author.dat' using 1:20 title "Aaron McTavish" w lines, 'commits_by_author.dat' using 1:21 title "freak4pc" w lines
