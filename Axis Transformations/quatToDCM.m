function [ dcm ] = quatToDCM(quaternian)
% Converts a quaternian to the direction cosine matrix.
%
% Inputs:
% quaternian - 1-by-4 or 4-by-1 vector - vector representation of quaternian
%
% Outputs:
% dcm - 3-by-3 matrix - Direction Cosine Matrix
%
% Topic: Quaternians
%
% Ari Rubinsztejn
% a.rubin1225@gmail.com
% www.gereshes.com

%{
Ver Mk1
%}

%To Do
%{
-Comment Code
-Finish Documentation
    -Intro Documentation
    -Use documentation
    -Proper Terminology
    -Clean up presentation
    -Spell check
%}
quaternian=quaternian/norm(quaternian);
b0=quaternian(1);
b1=quaternian(2);
b2=quaternian(3);
b3=quaternian(4);
dcm=[(b0^2)+(b1^2)-(b2^2)-(b3^2),2*((b1*b2)+(b0*b3)),2*((b1*b3)-(b0*b2));...
    2*((b1*b2)-(b0*b3)),(b0^2)-(b1^2)+(b2^2)-(b3^2),2*((b2*b3)+(b0*b1));...
    2*((b1*b3)+(b0*b2)),2*((b2*b3)-(b0*b1)),(b0^2)-(b1^2)-(b2^2)+(b3^2)];

end

