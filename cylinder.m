function y=cylinder(x,g)
if numel(x)==1
    h=0;

else
h=(x(2)-x(1));
end
y=g(1);
for j=1:length(x)-2

    y=y+2*g(j+1);
end
y=h/2*(y+g(length((x))));

