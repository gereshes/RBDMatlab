function [ n ] = quatMultBasic(Q,R)
% quatMultBasic Calculate the product of two quaternions.
%     N = quatMultBasic( Q, R ) calculates the quaternion product, N, for two
%     given quaternions, Q and R.  Inputs Q and R are both 1-by-4 matrices.
%     N returns a 1-by-4 matrix of quaternion products.  Each element of Q 
%     and R must be a real number.  Additionally, Q and R have their scalar 
%     number as the first 
%     column.
%  
%     Examples:
%  
%     Determine the product of two 1-by-4 quaternions:
%        q = [1 0 1 0];
%        r = [1 0.5 0.5 0.75];
%        mult = quatmult(q, r)
%
% Note: This is a less powerful replica of quatmultiply() in the aerospace
% toolbox.
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
[rQ,cQ]=size(Q);
[rR,cR]=size(R);
if (rQ~=1 || cQ~=4)
    error('The first input must be a matrix of the form 1-by-4')
elseif (rQ~=1 || cQ~=4)
    error('The second input must be a matrix of the form 1-by-4')
end
qReal = Q(1);
rReal = R(1);
qVec = Q(2:4);
rVec = R(2:4);
n=[(qReal*rReal)-dot(qVec,rVec),(qReal.*rVec)+(rReal*qVec)+cross(qVec,rVec)];
end

