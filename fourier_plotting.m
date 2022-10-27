% ~~~~~~~~~~~~~ plotting piecewise orginal function ~~~~~~~~~~~~~ %
fplot(@(x) 0,[-2 -1], 'b', 'Linewidth',2)
hold on % holding to add more functions
fplot(@(x) 1,[-1 1], 'b', 'Linewidth',2)
fplot(@(x) 0,[1 2], 'b', 'Linewidth',2)



% making function fill entire domain
fplot(@(x) 0,[-3 -2], 'b', 'Linewidth',2)
fplot(@(x) 0,[2 3], 'b', 'Linewidth',2)
fplot(@(x) 1,[-5 -3], 'b', 'Linewidth',2)
fplot(@(x) 1,[3 5], 'b', 'Linewidth',2)

% ~~~~~~~~~~~~~~~~~~ Plotting Fourier Function ~~~~~~~~~~~~~~~~~~ %
f0 = @(x) 1/2;

for n = 1 : 6
    new_part = @(x) ((2*sin((n*pi)/2))/(n*pi))*(cos((n*pi*x)/2));
    f0 = @(x) f0(x) + new_part(x); 
    fplot(f0,'-')
    pause(0.6)
end 
   