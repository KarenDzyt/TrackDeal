function [p] = LineFitting(x1,y1,color)
x0=x1;
y0=y1;
n1=length(x0);
for i=1:n1
%P=polyfit(x,y,n)     
% [P S mu]=polyfit(x,y,n)       
% polyval��P��t��������n�ζ���ʽ��t����ֵ  
% ע������x y��֪���ݵ������ֱ��ʾ�������꣬nΪ��϶���ʽ�Ĵ�����������أ�P-����n����϶���ʽϵ���Ӹߵ������δ��������P�У�S-��������ֵ����normr�ǲв�ƽ���ͣ�mu-��������ֵ mean��x����ֵ��std��x����׼�
   p{i}=polyfit(x1{i},y1{i},1);    
    [P{i},S{i},mu{i}]=polyfit(x1{i},y1{i},1); 
    x0{i}=linspace(min(x1{i}),max(x1{i}));  
    y0{i}=polyval(p{i},x0{i});  
    plot(x0{i},y0{i},color,'LineWidth',1);   %������ͼ����һ��
    hold on;
end
end

