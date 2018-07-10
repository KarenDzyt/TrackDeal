function [x,y] = WGS84ToUTM(lon,lat)
    DegToRad = @(x)(x / 180 * pi);
    lon_radian=DegToRad(lon);
    lat_radian=DegToRad(lat);
    
    zone = fix((lon + 180)/ 6) + 1;
    UTMCentralMeridian =(-183 + (zone * 6)) / 180 * pi;    
    [x1,y1] = MapLatLonToXY(lon_radian,lat_radian,UTMCentralMeridian);
    [x,y,southhemi] = LatLonToUTMXY(x1,y1);
end

