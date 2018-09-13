function [x1,y1] = repeat(x1,y1)
id1 = cellfun('length',x1);
x1(id1<10)=[];
id2 = cellfun('length',y1);
y1(id2<10)=[];

n=length(x1);
mark1 = cell(n,1);
%É¸³ýÖØµþµÄµã
for j=1:n
    for i=1:length(x1{j})-1
        if x1{j}(i+1)-x1{j}(i)<0.1 && y1{j}(i+1)-y1{j}(i)<0.1
            mark1{j}(i)=1;
        end
        mark1{j}(i)=0;
    end
end


for i=1:n
    a=1;
    l=length(x1{i});
    for j=1:l-1
        if mark1{i}(j)==1
             x1{i}(a)=[];
             y1{i}(a)=[];
             a=a-1;
        end
        a=a+1;
    end
end
end

