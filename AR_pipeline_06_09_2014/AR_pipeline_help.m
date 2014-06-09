%help for running the entire pipeline from vid data, optical flow, spatial
%derivatives of u and v, components curl and divergence, raster scanning
%them, computing x of each, then A of each
timerval=tic;

roi=define_roi([151,200],[151,200],0,'1001-2.avi'); %0 input indicates use all frames from vid
[uv_all] = calc_optical_flow(10,roi); %10 input is the number of frames skipped for comparison
sigma=5;
[u_x,u_y,v_x,v_y]=second_deriv(uv_all,sigma);
[curl, div] = calc_first_flow_components(u_x,u_y,v_x,v_y);
[curl_r,div_r]= components_to_raster(curl,div);
[X_curl] = calc_X_flow_components(curl_r);
[X_div] = calc_X_flow_components(div_r);
[A_curl] = calc_A_flow_components(X_curl,5); %5 input is order for A AR parameter
[A_div] = calc_A_flow_components(X_div,5);

toc(timerval)