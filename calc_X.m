function [X, sig_hat, vt_hat,vid_raster,vt_columns,q,num_frames]=calc_X()
% calc_X()
% computes state of avi video system, X, from vid_raster data from avi_to_raster
% outputs: X, state of avi system, (q x frames)
% sig_hat, "a diagonal matrix consisting of the q largest singular values in [sigma]", (q x q)
% vt_hat, (q x length(V(1,:))
% q, dimensionality of subspace, scalar
% num_frames, scalar length (frames) of avi video

q=20; %dimensionality of subspace, hardcoded for now
[vid_raster, num_pixels, num_frames]=avi_to_raster();
[U,S,V]=svd(vid_raster,'econ');
sig_hat=zeros(q,q);
sig_hat=S(1:q,1:q);
vt_columns=length(V(1,:));
vt_hat=zeros(q,vt_columns);
vt_hat=V(1:q,:);
X=sig_hat*vt_hat;