function [A,X_rest,X_order_1_f, X, q]=calc_A_higher(order)
% calc_A_higher(order) , calculates higher order A based on input scalar order
% Outputs: A, AR coefficient matrix for input order computed from X, (q x (q*order))
% X_rest, matrix containing all "lagging" X matrices, input to pseudo-inverse function
% X_order_1_f, "leading" X matrix, starts from X_(order+1) to X_num_frames
% X, state of avi system, (q x frames)
% q, dimensionality of subspace, scalar

[X, sig_hat, vt_hat,vid_raster,vt_columns,q,num_frames]=calc_X();
A=zeros(q,q*order);
X_order_1_f=zeros(q,num_frames-order);
X_order_1_f=X(:,(order+1):num_frames);
X_rest=zeros(order*q,num_frames-order);
for i=1:order
    current_X=X(:,(order+1-i):num_frames-i);
    X_rest(1+(i-1)*q:q*i,:)=current_X;
end
A= X_order_1_f*pinv(X_rest); 