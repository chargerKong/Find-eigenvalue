function answer=find_eig(up,down,left,right)
%%
%% (0 0.5i),(0 -0.5i),(1,0.5i),(1,-0.5i) 
% up=0.5;down=-0.5;left=0;right=1;
h=0.000133;
x=left:h:right;y=down:h:up;
% answer=cylinder(x-1i/2,1./(x-0.5*1i-z0))+cylinder(1+(y-1/2)*1i,1./(1+(y-0.5)*1i-z0))...
%     +cylinder(0.5*1i+fliplr(x),1./((x1+0.5*1i)-z0)) +cylinder((fliplr(x)-0.5)*1i,1./(((y1-0.5)*1i)-z0));
answer=(cylinder(x+1i*down,fun1(x,down))+cylinder(right+y*1i,fun1(right,y))...
    +cylinder(fliplr(x)+up*1i,fun1(fliplr(x),up)) +cylinder(left+(fliplr(y))*1i,fun1(left,fliplr(y))))/(2*pi*1i);
