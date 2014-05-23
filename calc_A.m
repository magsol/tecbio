function [A, X, q]=calc_A()
%calc_A() , preliminary exercise before calc_A_1 which calcs higher order A
% calculates A coefficient for order of 1 from X
% Outputs: A, AR coefficient matrix for order of 1 from X
% X, state of avi system, (q x frames)
% q, dimensionality of subspace, scalar

[X, sig_hat, vt_hat,vid_raster,vt_columns,q,num_frames]=calc_X();
frames=length(X(1,:));
X_f_2=zeros(q,frames-1);
X_f_2=X(:,2:frames); %"leading" x mat starting from x_2 to x_f
X_fmin1_1=zeros(q,frames-1);
X_fmin1_1=X(:,1:frames-1); %"lagging" x mat starting from x_1 to x_f-1
A=X_f_2*pinv(X_fmin1_1);