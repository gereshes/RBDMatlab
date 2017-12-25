function [ dcm ] = angleToDCMBasic(ypr, rotationSequence)
%This function takes in three angles in radians, yaw, pitch, and roll, and creates the
%Direction cosine matrix
%
%Yaw - Psi - 1
%Pitch - Theta - 2
%Roll - Phi - 3
%
%Inputs:
%ypr - 1-by-3 matrix - composed of [yaw,pitch roll];
%rotationSequence - 3 digit integer - this will be the sequence that the
%                                     rotations are applied. Each digit can
%                                     only be a 1,2, or 3.
%Outputs:
%dcm - 3-by-3 matrix - Direction cosine matrix
%
%Notes: see Euler angles
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
if(rotationSequence>999 || rotationSequence<100)
    error('Please enter a 3 digit rotation sequence');
end
firstTerm = floor(rotationSequence/100)
secondTerm = floor((rotationSequence-(firstTerm*100))/10)
thirdTerm=rotationSequence-(firstTerm*100)-(secondTerm*10)
if(~ismember(firstTerm,[1,2,3])||~ismember(secondTerm,[1,2,3])||~ismember(thirdTerm,[1,2,3]))
    error('Rotation sequence must only contain the digits 1,2, or 3');
end
yaw=ypr(1);
pitch = ypr(2);
roll=ypr(3);
cy = cos(yaw);
sy = sin(yaw);
cp = cos(pitch);
sp = sin(pitch);
cr = cos(roll);
sr = sin(roll);
T3 = [ cy sy 0; -sy cy 0; 0 0 1 ];
T2 = [ cp 0 -sp; 0 1 0; sp 0 cp];
T1 = [ 1 0 0; 0 cr sr; 0 -sr cr];
T={T1,T2,T3};
dcm=(T{thirdTerm}*T{secondTerm}*T{firstTerm})
end

