//PES1201800169
clc;
funcprot(0);
format('v',20);
mat = input("Enter a matrix of order NxN ");

function gauss_jordan(mat)
    
    n = length(mat(1,:));
    aug_mat = [mat,eye(n,n)];
    for j=1:n-1
            for i=j+1:n
                aug_mat(i,j:2*n) = aug_mat(i,j:2*n) - aug_mat(i,j)/aug_mat(j,j)*aug_mat(j,j:2*n)
            end
    end
    for j=n:-1:2
            aug_mat(1:j-1,:) = aug_mat(1:j-1,:) - aug_mat(1:j-1,j)/aug_mat(j,j)*aug_mat(j,:)
    end
    for j=1:n
            aug_mat(j,:) = aug_mat(j,:) / aug_mat(j,j);
    end
    

    inv_mat = aug_mat(:,n+1:2*n);
    disp(inv_mat,'The Inverse is ');
    
endfunction

gauss_jordan(mat)
