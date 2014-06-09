function [A] = calc_A_flow_components(X, order)
%calculates AR parameters A from X (calculated with rastered curl or divergence) and order 

%X = X from curl or divergence, in turn from optical flow and spatial
%derivatives of u and v
%order = order of AR parameters, eg 5

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

