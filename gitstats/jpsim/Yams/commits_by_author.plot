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
plot 'commits_by_author.dat' using 1:2 title "Norio Nomura" w lines, 'commits_by_author.dat' using 1:3 title "JP Simard" w lines, 'commits_by_author.dat' using 1:4 title "Saleem Abdulrasool" w lines, 'commits_by_author.dat' using 1:5 title "Keith Smiley" w lines, 'commits_by_author.dat' using 1:6 title "dependabot[bot]" w lines, 'commits_by_author.dat' using 1:7 title "Maxwell Elliott" w lines, 'commits_by_author.dat' using 1:8 title "Brentley Jones" w lines, 'commits_by_author.dat' using 1:9 title "norio-nomura-test-forked-repository" w lines, 'commits_by_author.dat' using 1:10 title "David Hart" w lines, 'commits_by_author.dat' using 1:11 title "azure-pipelines[bot]" w lines, 'commits_by_author.dat' using 1:12 title "Yuta Saito" w lines, 'commits_by_author.dat' using 1:13 title "Terence J. Grant" w lines, 'commits_by_author.dat' using 1:14 title "Sven A. Schmidt" w lines, 'commits_by_author.dat' using 1:15 title "Ryan Lovelett" w lines, 'commits_by_author.dat' using 1:16 title "Rob Napier" w lines, 'commits_by_author.dat' using 1:17 title "Ondrej Rafaj" w lines, 'commits_by_author.dat' using 1:18 title "Max Desiatov" w lines, 'commits_by_author.dat' using 1:19 title "Mattt" w lines, 'commits_by_author.dat' using 1:20 title "Mathew Polzin" w lines, 'commits_by_author.dat' using 1:21 title "Lukas Stührk" w lines