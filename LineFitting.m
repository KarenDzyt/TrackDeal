function [p] = LineFitting(x1,y1,color)
x0=x1;
y0=y1;
n1=length(x0);
for i=1:n1
%P=polyfit(x,y,n)     
% [P S mu]=polyfit(x,y,n)       
% polyval（P，t）：返回n次多项式在t处的值  
% 注：其中x y已知数据点向量分别表示横纵坐标，n为拟合多项式的次数，结果返回：P-返回n次拟合多项式系数从高到低依次存放于向量P中，S-包含三个值其中normr是残差平方和，mu-包含两个值 mean（x）均值，std（x）标准差。
   p{i}=polyfit(x1{i},y1{i},1);    
    [P{i},S{i},mu{i}]=polyfit(x1{i},y1{i},1); 
    x0{i}=linspace(min(x1{i}),max(x1{i}));  
    y0{i}=polyval(p{i},x0{i});  
    plot(x0{i},y0{i},color,'LineWidth',1);   %将两个图画到一块
    hold on;
end
end

