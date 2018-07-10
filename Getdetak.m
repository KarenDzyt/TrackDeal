function [deta_k1,deta_k2,deta] = Getdetak(data1,data2)
[lon1,lat1]=getline(data1);
[lon2,lat2]=getline(data2);
 n = length(lon1);
[x1,y1] = WGS84ToUTM(lon1,lat1);
[x2,y2] = WGS84ToUTM(lon2,lat2);

[p1] = LineFitting(x1,y1);
[p2] = LineFitting(x2,y2);
deta_k1 = zeros(1,n);
deta_k2 = zeros(1,n);
deta = zeros(1,n);

for i=1:n
    deta_k1(i) = abs(atan(p1{i}(1))*180/pi)-abs(atan(p1{1}(1))*180/pi);
    deta_k2(i) = abs(atan(p2{i}(1))*180/pi)-abs(atan(p2{1}(1))*180/pi);
    deta(i) = abs(atan(p1{i}(1))*180/pi)-abs(atan(p2{i}(1))*180/pi);
end

end

