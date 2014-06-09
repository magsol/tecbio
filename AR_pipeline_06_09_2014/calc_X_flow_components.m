function [X] = calc_X_flow_components(comp_raster)
%calculates AR value X from the raster scanned flow component
%comp_raster= raster scan of either curl or divergence computed from
%optical flow and spatial derivatives of u and v

num_pixels=length(comp_raster(:,1));
num_frames=length(comp_raster(1,:));
q=20;
%svd for curl or divergence
[U,S,V]=svd(comp_raster,'econ');
V_t=transpose(V);
% sig_hat=zeros(q,q);
sig_hat=S(1:q,1:q);
vt_columns=length(V_t(1,:));
vt_hat=zeros(q,vt_columns);
vt_hat=V_t(1:q,:);
X=sig_hat*vt_hat;