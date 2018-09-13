function [deta_k1,deta_k2] = Getdetak(data1,data2)
[lon1,lat1]=getline(data1);
[lon2,lat2]=getline(data2);

[x1,y1] = WGS84ToUTM_cell(lon1,lat1);
[x2,y2] = WGS84ToUTM_cell(lon2,lat2);

[x1,y1] = repeat(x1,y1);
[x2,y2] = repeat(x2,y2);

 n1 = length(x1);
 n2 = length(x2);
 
[p1] = LineFitting(x1,y1,'r');
[p2] = LineFitting(x2,y2,'blue');
deta_k1 = zeros(1,n1);
deta_k2 = zeros(1,n2);
for i=1:n1
    deta_k1(i) = abs(abs(atan(p1{i}(1))*180/pi)-abs(atan(p1{1}(1))*180/pi));
    scatter(x1{i},y1{i},5,'black','filled');
    hold on;
end
for i=1:n2
    deta_k2(i) = abs(abs(atan(p2{i}(1))*180/pi)-abs(atan(p2{1}(1))*180/pi));
    scatter(x2{i},y2{i},5,'black','filled');
    hold on;
end


end

%条带数相同的情况下
% function [deta_k1,deta_k2,deta] = Getdetak(data1,data2)
% [lon1,lat1]=getline(data1);
% [lon2,lat2]=getline(data2);
%  n = length(lon1);
% 
% [x1,y1] = WGS84ToUTM_cell(lon1,lat1);
% [x2,y2] = WGS84ToUTM_cell(lon2,lat2);
% for i=1:n
%     scatter(x1{i},y1{i},5,'black','filled');
%     hold on;
%         scatter(x2{i},y2{i},5,'black','filled');
%     hold on;
% end
% 
% [p1] = LineFitting(x1,y1,'r');
% [p2] = LineFitting(x2,y2,'blue');
% deta_k1 = zeros(1,n);
% deta_k2 = zeros(1,n);
% deta = zeros(1,n);
% 
% for i=1:n
%     deta_k1(i) = abs(abs(atan(p1{i}(1))*180/pi)-abs(atan(p1{1}(1))*180/pi));
%     deta_k2(i) = abs(abs(atan(p2{i}(1))*180/pi)-abs(atan(p2{1}(1))*180/pi));
%     deta(i) = abs(abs(atan(p1{i}(1))*180/pi)-abs(atan(p2{i}(1))*180/pi));
% end
% 
% end