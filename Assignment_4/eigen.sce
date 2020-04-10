//To find the eigen values and eigen vectors of any 3x3 matrix.
clc; close(); clear;
A = input("Enter the matrix(3x3): ");
lam = poly(0,'lam');
lam = lam;
charMat = A-lam*eye(3,3);
disp(charMat,'The characteristic matrix: ');
charPoly = poly(A,'lam');
disp(charPoly,'The characteristic polynomial: ');
lam = spec(A);
disp(lam,'The eigen values of A: ');
function[x,lam] = eigenvectors(A)
    [n,m] = size(A);
    lam = spec(A)';
    x = [];
    for k=1:3
        b = A-lam(k)*eye(3,3); //Characteristic matrix
        c = b(1:n-1,1:n-1); //Coefficient matrix for the reduced system
        b1 =-b(1:n-1,n); //RHS vector for the reduced system
        y = c\b1; //Solution for the reduced system
        y = [y:1]; //Complete eigen vector
        y = y/norm(y); //Making unit eigen vector
        x = [x y];
    end
endfunction

get f('eigenvectors');
[x,lam] = eigenvectors(A);
disp(x,'The eigen vectors of A are');
//PES1201800169, Ninad Sangli
