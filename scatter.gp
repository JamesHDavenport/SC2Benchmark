set size square
set xrange [0.01:10000.0]
set yrange [0.01:10000.0]
set key left top
# set key off
set logscale x
set logscale y
set xlabel 'Solver 1'
set ylabel 'Solver 2'
set title ''
set terminal pdf 
set output 'scatter.pdf'
set pointsize 0.5

plot x notitle lt 1, 10*x notitle lt 1, x/10 notitle lt 1, \
     'scatter_data.txt' using ($2==0 ? $3 : -1):($2==0 ? $4 : -1) title 'unsatisfiable' with points pointtype 7 lt 3, \
     'scatter_data.txt' using ($2==1 ? $3 : -1):($2==1 ? $4 : -1) title 'satisfiable' with points pointtype 7 lt 4

