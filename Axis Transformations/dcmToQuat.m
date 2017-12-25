function [ Quaternian ] = dcmToQuat( dcm )
% Converts direction cosine matrix to quaternian
%
% Input:
% dcm - 3-by-3 matrix - Direction cosine matrix
%
% Output:
% Quaternian - 1-by-4 vector - Quaternian vector representation
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
b0=.5*sqrt(dcm(1,1)+dcm(2,2)+dcm(3,3)+1);
b1=(dcm(2,3)-dcm(3,2))/(4*b0);
b2=(dcm(3,1)-dcm(1,3))/(4*b0);
b3=(dcm(1,2)-dcm(2,1))/(4*b0);
Quaternian = [b0,b1,b2,b3];
end

