function [curl, div] = calc_first_flow_components(u_x,u_y,v_x,v_y)
%calculates curl and divergence from spatial derivatives of optical flow
%data


curl=-(u_y - v_x);
div = (u_x + v_y);
