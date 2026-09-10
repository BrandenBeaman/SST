init();

% created a vector t with values from 0 - 20 with 201 points 
t = linspace(0, 20, 201);

y = exp(-0.2 .* t).*cos(t)

make_plot(t, y, "y = e^-0.2t * cos(t)", "t", "y")