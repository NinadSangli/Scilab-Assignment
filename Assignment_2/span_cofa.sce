clc
funcprot(0)
format('v',10)
A = input("Enter the matrix: ")

function col_space(A)
    
    disp(A,"The given matrix is A = ")
    A(2,:) = A(2,:) - (A(2,1)/A(1,1))*A(1,:)
    A(3,:) = A(3,:) - (A(3,1)/A(1,1))*A(1,:)
    disp(A)
    A(3,:) = A(3,:) - (A(3,2)/A(2,2))*A(2,:)
    disp(A)
    A(1,:) = A(1,:)/A(1,1)
    A(2,:) = A(2,:)/A(2,2)
    disp(A,"Row reduced form = ") 
    [m, n] = size(A)
    for i=1:m
        for j=i:n
            if(A(i,j)<>0)
                disp(' is a pivot column',j,'column: ')
                break
            end
        end
    end
        
endfunction
//PES1201800169, Ninad Sangli
