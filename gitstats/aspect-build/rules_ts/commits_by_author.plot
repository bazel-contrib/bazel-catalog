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
plot 'commits_by_author.dat' using 1:2 title "Alex Eagle" w lines, 'commits_by_author.dat' using 1:3 title "Greg Magolan" w lines, 'commits_by_author.dat' using 1:4 title "Sahin Yort" w lines, 'commits_by_author.dat' using 1:5 title "Jason Bedard" w lines, 'commits_by_author.dat' using 1:6 title "renovate[bot]" w lines, 'commits_by_author.dat' using 1:7 title "thesayyn" w lines, 'commits_by_author.dat' using 1:8 title "Renovate Bot" w lines, 'commits_by_author.dat' using 1:9 title "John Firebaugh" w lines, 'commits_by_author.dat' using 1:10 title "Derek Cormier" w lines, 'commits_by_author.dat' using 1:11 title "Vasilios Pantazopoulos" w lines, 'commits_by_author.dat' using 1:12 title "Tobias Schlatter (tos)" w lines, 'commits_by_author.dat' using 1:13 title "Matt Mackay" w lines, 'commits_by_author.dat' using 1:14 title "Jeremy Studer" w lines, 'commits_by_author.dat' using 1:15 title "realtimetodie" w lines, 'commits_by_author.dat' using 1:16 title "ericrafalovsky" w lines, 'commits_by_author.dat' using 1:17 title "UebelAndre" w lines, 'commits_by_author.dat' using 1:18 title "Tobias Schlatter" w lines, 'commits_by_author.dat' using 1:19 title "Takeo Sawada" w lines, 'commits_by_author.dat' using 1:20 title "Oleg Vaskevich" w lines, 'commits_by_author.dat' using 1:21 title "Mikita Belahlazau" w lines
