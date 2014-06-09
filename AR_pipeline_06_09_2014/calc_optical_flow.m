function [uv_all] = calc_optical_flow(frame_jump,vid_data)
%uv_all is mat of optical flow vectors, (rows,columns,(frames-1)/frame_jump
%,2), the first page is x and the second page is y

%input: frame_jump is the number of frames skipped for computing optical
%flow. for example, if frame_jump = 10, frame 1 will be compared to frame
%11

%vid_data, input mat with (rows, columns, frames) of original avi data; may be a selected ROI or only some frames

count=1;
for i=1:frame_jump:length(vid_data(1,1,:))-frame_jump
    first_frame=vid_data(:,:,i);
    second_frame=vid_data(:,:,i+frame_jump);
    current_uv=estimate_flow_interface(first_frame,second_frame,'classic+nl-fast');
    uv_all(:,:,count,1)=current_uv(:,:,1);
    uv_all(:,:,count,2)=current_uv(:,:,2);
    count=count+1;
end
