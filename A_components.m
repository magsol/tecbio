function [A_1,A_2,A_3,A_4,A_5]=A_components(order)
% A_components(order), mostly arbitrary function that calls all previous loading and AR steps
%     and separates large A mat into distinct A coefficient matrices based on input order
% NOTE: don't call for unneccesary outputs, ie if order =3, [A_1, A_2, A_3]= A_components(3)
% outputs: A_1, 1st coefficient mat
% A_2, 2nd coefficient mat, assuming order >= 2
% A_3, 3rd coefficient mat, assuming order >= 3
% A_4, 4th coefficient mat, assuming order >= 4
% A_5, 5th coefficient mat, assuming order >= 5

[A,X_rest,X_order_1_f, X, q]=calc_A_higher(order);
A_1=zeros(q,q);
A_2=zeros(q,q);
A_3=zeros(q,q);
A_4=zeros(q,q);
A_5=zeros(q,q);
if order==1
    A_1=A;
elseif order==2
    A_1=A(:,1:q);
    A_2=A(:,q+1:2*q);
elseif order==3
    A_1=A(:,1:q);
    A_2=A(:,q+1:2*q);
    A_3=A(:,2*q+1:3*q);
elseif order==4
    A_1=A(:,1:q);
    A_2=A(:,q+1:2*q);
    A_3=A(:,2*q+1:3*q);
    A_4=A(:,3*q+1:4*q);
elseif order==5
    A_1=A(:,1:q);
    A_2=A(:,q+1:2*q);
    A_3=A(:,2*q+1:3*q);
    A_4=A(:,3*q+1:4*q);
    A_5=A(:,4*q+1:5*q);
end

