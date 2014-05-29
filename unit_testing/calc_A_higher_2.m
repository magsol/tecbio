function [A]=calc_A_higher_2(order,movie_name)
% calc_A_higher_2(order) , for unit testing, calculates higher order A based on input scalar order
% Outputs: A, AR coefficient matrix for input order computed from X, (q x (q*order))
% X_rest, matrix containing all "lagging" X matrices, input to pseudo-inverse function
% X_order_1_f, "leading" X matrix, starts from X_(order+1) to X_num_frames
% X, state of avi system, (q x frames)
% q, dimensionality of subspace, scalar

[X]=calc_X_2(movie_name);
q=length(X(:,1));
num_frames=length(X(1,:));
A=zeros(q,q*order);
X_order_1_f=zeros(q,num_frames-order);
X_order_1_f=X(:,(order+1):num_frames);
X_rest=zeros(order*q,num_frames-order);
for i=1:order
    current_X=X(:,(order+1-i):num_frames-i);
    X_rest(1+(i-1)*q:q*i,:)=current_X;
end
A= X_order_1_f*pinv(X_rest); 