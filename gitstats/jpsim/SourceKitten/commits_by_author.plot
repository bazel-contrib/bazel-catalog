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
plot 'commits_by_author.dat' using 1:2 title "JP Simard" w lines, 'commits_by_author.dat' using 1:3 title "Norio Nomura" w lines, 'commits_by_author.dat' using 1:4 title "John Fairhurst" w lines, 'commits_by_author.dat' using 1:5 title "Saleem Abdulrasool" w lines, 'commits_by_author.dat' using 1:6 title "Maxwell Elliott" w lines, 'commits_by_author.dat' using 1:7 title "Keith Smiley" w lines, 'commits_by_author.dat' using 1:8 title "Jeff Verkoeyen" w lines, 'commits_by_author.dat' using 1:9 title "Samuel E. Giddins" w lines, 'commits_by_author.dat' using 1:10 title "Paul Taykalo" w lines, 'commits_by_author.dat' using 1:11 title "Marcelo Fabri" w lines, 'commits_by_author.dat' using 1:12 title "Simone Civetta" w lines, 'commits_by_author.dat' using 1:13 title "Sho Ikeda" w lines, 'commits_by_author.dat' using 1:14 title "Paul Young" w lines, 'commits_by_author.dat' using 1:15 title "Zheng Li" w lines, 'commits_by_author.dat' using 1:16 title "dependabot[bot]" w lines, 'commits_by_author.dat' using 1:17 title "Tamas Lustyik" w lines, 'commits_by_author.dat' using 1:18 title "Syo Ikeda" w lines, 'commits_by_author.dat' using 1:19 title "Masayuki Yamaya" w lines, 'commits_by_author.dat' using 1:20 title "Marcel Jackwerth" w lines, 'commits_by_author.dat' using 1:21 title "Lukas Stührk" w lines
