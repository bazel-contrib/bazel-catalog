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
plot 'lines_of_code_by_author.dat' using 1:2 title "Protobuf Team Bot" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Feng Xiao" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Adam Cozzette" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Joshua Haberman" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Jon Skeet" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Jisi Liu" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Mike Kruskal" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Thomas Van Lenten" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Jan Tattermusch" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Paul Yang" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Deanna Garcia" w lines, 'lines_of_code_by_author.dat' using 1:13 title "csharptest" w lines, 'lines_of_code_by_author.dat' using 1:14 title "deannagarcia" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Max Cai" w lines, 'lines_of_code_by_author.dat' using 1:16 title "kenton@google.com" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Josh Haberman" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Bo Yang" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Hao Nguyen" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Jie Luo" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Yilun Chong" w lines
