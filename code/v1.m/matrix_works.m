i1 = [1 2 3];
i2 = [3 2 1];
i3 = [1 2 3];
i4 = [3 2 1];
i5 = [1 42 3];
i6 = [3 2 1];

b1 = [1 2 3];
b2 = [3 2 1];
b3 = [1 2 3];
b4 = [3 2 1];
b5 = [1 9 3];
b6 = [3 2 8];
% 
% f1 = 4;
% f2 = 2;
% f3 = 2;
% f4 = 42;
% f5 = 76;
% f6 = 675;


T = [
    i1,cross(b1,i1);
    i2,cross(b2,i2);
    i3,cross(b3,i3);
    i4,cross(b4,i4);
    i5,cross(b5,i5);
    i6,cross(b6,i6)];
    
 result = F * T;
 Force = [rand(1,6)];


outputresult = result;
inputForces = rand(1,6);

for i = 1:10000
    Force = [rand(1,6)];
T = [
    i1,cross(b1,i1);
    i2,cross(b2,i2);
    i3,cross(b3,i3);
    i4,cross(b4,i4);
    i5,cross(b5,i5);
    i6,cross(b6,i6)];
    
result = Force* T;
outputresult = [outputresult;result];
inputForces = [inputForces;Force]; 
end


O = zeros(i+1,1);
finalOutput = [inputForces,O,outputresult]
 





