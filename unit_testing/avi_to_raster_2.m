function [vid_raster,num_frames]=avi_to_raster_2(movie_name)
% avi_to_raster_2() for unit testing
% takes output from read_avi and organizes vid_data as raster kymograph(pixels x frames)
% outputs: vid_raster, raster of vid_data from avi video loaded in read_avi
% num_pixels, total number of pixels in frame of original avi
% num_frames, scalar length (frames) of avi video

[vid_data] = read_avi_2(movie_name);
num_rows=length(vid_data(:,1,1));
num_columns=length(vid_data(1,:,1));
num_pixels=num_rows*num_columns;
num_frames=length(vid_data(1,1,:));
vid_raster=zeros(num_pixels,num_frames);
count=1;
for y=1:1:num_rows
    for x=1:1:num_columns
        vid_raster(count,:)=vid_data(y,x,:);
        count=count+1;
    end
end