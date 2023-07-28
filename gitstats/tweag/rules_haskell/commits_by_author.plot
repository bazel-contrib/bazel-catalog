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
plot 'commits_by_author.dat' using 1:2 title "Andreas Herrmann" w lines, 'commits_by_author.dat' using 1:3 title "Mathieu Boespflug" w lines, 'commits_by_author.dat' using 1:4 title "mergify[bot]" w lines, 'commits_by_author.dat' using 1:5 title "Facundo Domínguez" w lines, 'commits_by_author.dat' using 1:6 title "Philip Patsch" w lines, 'commits_by_author.dat' using 1:7 title "Guillaume Bouchard" w lines, 'commits_by_author.dat' using 1:8 title "mrkkrp" w lines, 'commits_by_author.dat' using 1:9 title "Nicolas Mattia" w lines, 'commits_by_author.dat' using 1:10 title "Yves-Stan Le Cornec" w lines, 'commits_by_author.dat' using 1:11 title "Mateusz Kowalczyk" w lines, 'commits_by_author.dat' using 1:12 title "Judah Jacobson" w lines, 'commits_by_author.dat' using 1:13 title "Mark Karpov" w lines, 'commits_by_author.dat' using 1:14 title "Gaël Deest" w lines, 'commits_by_author.dat' using 1:15 title "Clément Hurlin" w lines, 'commits_by_author.dat' using 1:16 title "Profpatsch" w lines, 'commits_by_author.dat' using 1:17 title "Théophane Hufschmitt" w lines, 'commits_by_author.dat' using 1:18 title "Sebastian Kazenbroot-Guppy" w lines, 'commits_by_author.dat' using 1:19 title "Erick Johnson" w lines, 'commits_by_author.dat' using 1:20 title "Christopher Harrison" w lines, 'commits_by_author.dat' using 1:21 title "Félix Baylac-Jacqué" w lines
