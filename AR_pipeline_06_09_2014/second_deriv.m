function [u_x,u_y,v_x,v_y]=second_deriv(uv_all,sigma)
% calculates spacial derivatives u_x, v_y, etc from uv_all optical flow data
% sigma is parameter for gaussian filter
% requires functions rconv2sep and upConv from matlabVisTools

sigma_sqr=sigma^2;
%next 5 lines copied from cannyEdgels.m from matlabVistools
gFiltSize = 2 * round(3.0 * sigma) + 1;
x = [1:gFiltSize] - round((gFiltSize+1)/2);
gFilt = exp(- x .* x / (2.0*sigma_sqr));
gFilt = gFilt/ sum(gFilt(:));
gxFilt = - (x / sigma_sqr) .* gFilt;

for i =1:1:length(uv_all(1,1,:,1))
    u_x(:,:,i)=rconv2sep(uv_all(:,:,i,1),gxFilt,gFilt);
    u_y(:,:,i)=rconv2sep(uv_all(:,:,i,1),gFilt,gxFilt);
    v_x(:,:,i)=rconv2sep(uv_all(:,:,i,2),gxFilt,gFilt);
    v_y(:,:,i)=rconv2sep(uv_all(:,:,i,2),gFilt,gxFilt);
end
    


