clear; clc;
mat = input("Enter a matrix: ")
disp(mat,'mat = ')
u0 = [1 1 1]';
disp(u0,'Initial vector:')
v = mat*u0
a1 = max(u0)
disp(mat,'1st approximation to eigen value: ')
while abs(max(v)-a1)>0.002
    disp(v,'current eigen vector: ')
    a1 = max(v)
    disp(a1,'Current eigen value: ')
    u0 = v/max(v)
    v = mat*u0
end
format('v',4)
disp(max(v),'Largest eigen value: ')
format('v',5)
disp(u0,'Corresponding eigen vector: ')
//PES1201800169, Ninad Sangli
