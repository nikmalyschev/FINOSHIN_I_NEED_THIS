%3x^4-8x^3-18x^2+2=0
p = [3 -8 -18 0 2];
x=-2:0.001:1;
F=polyval(p,x);

r = roots(p)
dp=polyder(p)
plot(x,F,'rs','LineWidth',1,'MarkerSize',1)
grid on
xlabel('x')
ylabel('p(x)')