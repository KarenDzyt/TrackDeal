function [p] = LineFitting(x1,y1)
n=length(x1);
% x0=x1;
% y0=y1;
for i=1:n
    p{i}=polyfit(x1{i},y1{i},1);  
    x0{i}=linspace(min(x1{i}),max(x1{i}));  
    y0{i}=polyval(p{i},x0{i});  
    plot(x0{i},y0{i});   %将两个图画到一块
    hold on;
end
end

