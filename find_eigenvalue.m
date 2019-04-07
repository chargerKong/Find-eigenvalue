function y=find_eigenvalue(up,down,left,right)
y=[];
total_num=cirle_integral(up,down,left,right);
N=1;
while 1
if abs(imag(total_num))<0.1&& round(total_num)==1
    y=find_eig(up,down,left,right);
    break
end
% if imag(total_num)<1e-2||abs(real(total_num-1)-floor)<1e-2
if abs(imag(total_num))<0.1&&round(total_num)>1
    change_down=(up+down)/2;
    change_right=(left+right)/2;
    change_left=(left+right)/2;
    change_up=(up+down)/2;
     if (abs(left-right)<0.01||abs(up-down)<0.01)
        temp=find_eig(up,down,left,right)/real(round(total_num)));
        y=[y,temp*ones(1,real(round(total_num)))];
        break
     end
    %% 第一块 左上
    value=find_eigenvalue(up,change_down,left,change_right);
    y=[y,value];
    %% 第二块 右上
    value=find_eigenvalue(up,change_down,change_left,right);
    y=[y,value];
    %% 第三块 左下
    value=find_eigenvalue(change_up,down,left,change_right);
    y=[y,value];
    %% 第四块 右下
    value=find_eigenvalue(change_up,down,change_left,right);
    y=[y,value];
    break
end
% if abs(total_num)<1e-2
if  abs(imag(total_num))<0.1&&round(total_num)==0
    y=[];
    break
end
up=up+0.001*rand();
left=left+0.001*rand();
right=right+0.001*rand();
N=N+1;
if N>1000
    error('改区域')
end
end
