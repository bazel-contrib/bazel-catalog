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
plot 'lines_of_code_by_author.dat' using 1:2 title "Andreas Herrmann" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Mathieu Boespflug" w lines, 'lines_of_code_by_author.dat' using 1:4 title "mergify[bot]" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Facundo Domínguez" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Philip Patsch" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Guillaume Bouchard" w lines, 'lines_of_code_by_author.dat' using 1:8 title "mrkkrp" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Nicolas Mattia" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Yves-Stan Le Cornec" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Mateusz Kowalczyk" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Judah Jacobson" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Mark Karpov" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Gaël Deest" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Clément Hurlin" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Profpatsch" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Théophane Hufschmitt" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Sebastian Kazenbroot-Guppy" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Erick Johnson" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Christopher Harrison" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Félix Baylac-Jacqué" w lines
