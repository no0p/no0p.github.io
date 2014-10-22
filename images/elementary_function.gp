set terminal png size 2460,1340 x000000
set size 0.4, 0.4
set output '/tmp/elementary_functions.png'

set linetype  2 lc rgb "dark-violet" lw 1
set linetype  1 lc rgb "green" lw 1

unset border
unset xtics
unset ytics
#set border lw 1 lc rgb "#cccccc"
#set xtics textcolor rgb "white"
#set ytics textcolor rgb "white"
#set xlabel textcolor rgb "white"
#set ylabel textcolor rgb "white"
set title textcolor rgb "white"
set key textcolor rgb "white"



set multiplot layout 3, 7 
unset key
set xtics nomirror scale 0
set ytics nomirror scale 0


set title 'x'
set xrange [-1:1]
set xtics -1,1,1
plot x lt 1


set title 'x^2'
set xrange [-2:2]
set xtics -2,1,2
plot x**2


set title 'x^3'
set xrange [-1:1]
set xtics -1,1,1
plot x**3


set title 'x^4'
plot x**4


set title 'x^5'
plot x**5


set title '|x|'
plot abs(x)


set title '1/x'
plot 1/x



set xrange [-pi:pi]
set title 'sin(x)'
plot sin(x)

set title 'cos(x)'
plot cos(x)

set title 'tan(x)'
plot tan(x)

set title 'arcsin(x)'
plot asin(x)

set title 'arccos(x)'
plot acos(x)

set title 'atan(x)'
plot atan(x)

set title 'sinh(x)'
plot sinh(x)




set xrange [-3:3]
set title 'e^x'
plot exp(x)

set title 'e^-x'
plot exp(-x)

set title 'ln(x)'
plot log(x)

set title 'log_10(x)'
plot log10(x)


unset multiplot
