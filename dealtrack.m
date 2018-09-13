clear all;

global sm_a;
global sm_b;
global sm_EccSquared;
global UTMScaleFactor;
sm_a = 6378137.0;
sm_b = 6356752.314;
sm_EccSquared = 6.69437999013e-03;
UTMScaleFactor = 0.9996;

[deta_k1,deta_k2] = Getdetak('output01-3','output04-3');
%   [deta_k12,deta_k22,deta2] = Getdetak('output3-3','output3-3');
