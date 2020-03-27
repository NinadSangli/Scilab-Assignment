clc
funcprot(0)
format('v',10)
A = input("Enter the matrix: ")

function subspaces(A)
    
    disp(A,'A = ');
    [m,n] = size(A);
    disp(m,'m = ','--------');
    disp(n,'n = ');
    [v,pivot] = rref(A);
    disp(rref(A),"Echelon Form = ",'--------')
    r = length(pivot)
    disp(r,'rank = ')
    columnullspacepace = A(:,pivot);
    disp('--------');
    disp(columnullspacepace,'Column Space = ');
    nullspace = kernel(A);
    disp('--------');
    disp(nullspace,'Null Space = ');
    rowspace = A(1:r,:)';
    disp('--------');
    disp(rowspace,'Row Space = ');
    left_nullspace = kernel(A');
    disp('--------');
    disp(left_nullspace,'Left Null Space = '); 
    
endfunction
//PES1201800169, Ninad Sangli
