function [x,y] = WGS84ToUTM(lon1,lat1)
 x=lon1;x1=lon1;
 y=lat1;y1=lat1;
 n = length(lon1);
for i=1:n
    DegToRad = @(x)(x / 180 * pi);
    lon_radian=DegToRad(lon1{i});
    lat_radian=DegToRad(lat1{i});

    zone = fix((lon1{i} + 180)/ 6) + 1;

    UTMCentralMeridian =(-183 + (zone * 6)) / 180 * pi;    
    [x1{i},y1{i}] = MapLatLonToXY(lon_radian,lat_radian,UTMCentralMeridian);
    [x{i},y{i},southhemi] = LatLonToUTMXY(x1{i},y1{i});
end

end

