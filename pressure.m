function P = pressure(V,T,G)
%   @author Lakindu Oshadha (lakinduoshadha98@gmail.com)
%   pressure.m finds the pressure of a container
%   using Van Der Waals equation
% Inputs:
%   V   : Gas specific volume
%   T   : The absolute temperature
%   G   : Gas
% 
% Outputs:
%   p   : Pressure

R = 0.08206;
switch G
    case 'helium'
        a = 0.0341;
        b = 0.0237;
    case 'hydrogen'
        a = 0.244;
        b = 0.0266;    
    case 'oxygen'
        a = 1.36;
        b = 0.0318;
    case 'chlorine'
        a = 6.49;
        b = 0.0562;
    case 'carbon_dioxide'
        a = 3.59;
        b = 0.0427;
    otherwise 
        disp('Wrong input : Gas')
end
P = ((R*T)/(V-b))-(a/(V^2));
return 
end