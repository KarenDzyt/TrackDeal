function[lon1,lat1]=getline(data)

%从excel中读取数据 
% data='output1-2';
data1=[data,'.xlsx'];
[a,txt]=xlsread(data1); %[num, txt]= xlsread(filename, ...)把返回的数据与文本分开保存。
lon=a(:,1);
lat=a(:,2);
% time=a(:,6);
mark=a(:,5);

n=length(lon);
b =find(mark,n);
n1 =length(b);
no = [1,b(1)];
for i=1:n1-1
    if b(i+1)-b(i)>20
        no=[no,b(i),b(i+1)];
    end
end
n2 = length(no);
mm=1;
for i=1:2:n2-1
    n3=no(i);
    n4=no(i+1);
    m=1;
    for j=n3:n4
        lon1{mm}(m)=lon(j);
        lat1{mm}(m)=lat(j);
        m=m+1;
    end 
    mm=mm+1;
end

% n5 = length(lon1);
% for i=1:n5     
%  scatter(lon1{i},lat1{i},10,'filled'); 
%  hold on;
% end

end