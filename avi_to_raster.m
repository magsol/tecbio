function [vid_raster, num_pixels, num_frames]=avi_to_raster()
% avi_to_raster()
% takes output from read_avi and organizes vid_data as raster kymograph(pixels x frames)
% outputs: vid_raster, raster of vid_data from avi video loaded in read_avi
% num_pixels, total number of pixels in frame of original avi
% num_frames, scalar length (frames) of avi video

[vid_data, num_rows, num_columns, num_frames] = read_avi();
num_pixels=num_rows*num_columns;
vid_raster=zeros(num_pixels,num_frames);
count=1;
for y=1:1:num_rows
    for x=1:1:num_columns
        vid_raster(count,:)=vid_data(y,x,:);
        count=count+1;
    end
end