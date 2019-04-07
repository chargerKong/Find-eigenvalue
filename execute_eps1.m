%  up(1)=0;down(1)=-10;left(1)=-20;right(1)=20;
clear all
global mu q0 epsilon L
mu=0;q0=1;epsilon=0.1;L=2;
% mu=0,eps=0.1,虚轴13个单根。eps=0.01，虚轴127个
%% 上半平面
up(1)=1.1;down(1)=0.1;left(1)=-1.1;right(1)=1.3;
figure(1)
plot([-30,30],[0,0],[0,0],[-0.5,1],'blue')
hold on 
eigvalue=find_eigenvalue(up,down,left,right);
plot(real(eigvalue),imag(eigvalue),'o')
%% 下半平面 从-10到10
up(1)=0.1;down(1)=-1.12;left(1)=-10.1;right(1)=0.1;
eig=find_eigenvalue(up,down,left,right);
eigvalue=[eigvalue,eig];
plot(real(eigvalue),imag(eigvalue),'o')


up(1)=0.1;down(1)=-1.1;left(1)=-0.1;right(1)=10.1;
eig=find_eigenvalue(up,down,left,right);
eigvalue=[eigvalue,eig];
plot(real(eigvalue),imag(eigvalue),'o')

%% 下半平面 从-20到-10
up(1)=0.12;down(1)=-1.12;left(1)=-20.01;right(1)=-10.11;
eig=find_eigenvalue(up,down,left,right);
eigvalue=[eigvalue,eig];
plot(real(eigvalue),imag(eigvalue),'o')

%% 下半平面 从-30到-20
up(1)=0.1;down(1)=-10;left(1)=-30.1;right(1)=-20.1;
eig=find_eigenvalue(up,down,left,right);
eigvalue=[eigvalue,eig];
plot(real(eigvalue),imag(eigvalue),'o')

%% 下半平面 从10到20
up(1)=0.1;down(1)=-1;left(1)=10.1;right(1)=20.1;
eig=find_eigenvalue(up,down,left,right);
eigvalue=[eigvalue,eig];
plot(real(eigvalue),imag(eigvalue),'o')

%% 下半平面 从20到30
up(1)=0.1;down(1)=-10;left(1)=20.1;right(1)=30.1;
eig=find_eigenvalue(up,down,left,right);
eigvalue=[eigvalue,eig];
plot(real(eigvalue),imag(eigvalue),'o')

save('eig1','eigvalue')
