set terminal wxt size 1200,900
set multiplot layout 2, 5 
unset key
set xtics nomirror scale 0
set ytics nomirror scale 0
set grid

set title 'x'
set xrange [-1:1]
set xtics -1,1,1
plot x


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

set xrange [-1.1:1.1]
set title 'tan(x)'
plot tan(x)

set title 'arcsin(x)'
plot asin(x)

set title 'arccos(x)'
plot acos(x)

set title 'atan(x)'
plot atan(x)





unset multiplot
