function [vid_data, num_rows, num_columns, num_frames] = read_avi()
% read_avi()
% prompts user for avi file name, ex 1001-2.avi
% loads avi in current directory with name of input as object mov
% creates 3d vid_data matrix to contain mov data
% outputs: vid_data, contains avi pixel data
% num_rows, scalar height of avi video
% num_columns, scalar width of avi video
% num_frames, scalar length (frames) of avi video

movie_name=input('\nWhich video will be processed?\n','s');
fprintf('\n');
mov = VideoReader(movie_name);
num_frames=mov.NumberOfFrames;
num_columns=mov.Width;
num_rows=mov.Height;
vid_data=zeros(num_rows,num_columns,num_frames);
for i =1:1:num_frames
    vid_data(:,:,i)=read(mov,i);
end