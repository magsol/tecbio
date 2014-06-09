function roi=define_roi(rows,columns,frames,vid_name)
% inputs:
% rows, should be a 1x2 vector whose values denote the rows of the video pixels included in the desired roi, ex. for the first 50 rows rows=[1,50]
% columns, should be a 1x2 vector whose values denote the columns of the video pixels included in the desired roi, ex. for the first 50 columns columns=[1,50]
% frames, should be a 1x2 vector whose values denote the frames of the video pixels included in the desired roi, ex. for the first 50 frames frames=[1,50], if frames = 0 then all frames used
% vid_name is a string of desired avi
% 
% output: roi= the selected data from vid_name with size (rows(1):rows(2),columns(1):columns(2),frames(1):frames(2))

vid_data=read_avi_2(vid_name);
if frames~=0
    roi(:,:,:)=vid_data(rows(1):rows(2),columns(1):columns(2),frames(1):frames(2));
else
    roi(:,:,:)=vid_data(rows(1):rows(2),columns(1):columns(2),:); 
end
