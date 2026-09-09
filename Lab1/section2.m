init();

x = [-15 -13 -11 -5 -2 -1 0 1 3]
p = [1 15 0 -9]
ysym = poly2sym(p)
y = polyval(p,x)

r = roots(p)

make_plot(x, y, 'section 2b vecor with roots', 'x', 'y', r, [0 0 0], '*')