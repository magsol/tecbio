function [curl_r,div_r]= components_to_raster(curl,div)
%simply rasterscans the input curl and divergence mats
%curl_r and div_r are raster versions of flow components

curl_r=zeros(length(curl(:,1,1))*length(curl(1,:,1)),length(curl(1,1,:)));
div_r=zeros(length(div(:,1,1))*length(div(1,:,1)),length(div(1,1,:)));

count=1;
for i=1:length(curl(:,1,1))
    for j = 1:length(curl(1,:,1))
        curl_r(count,:)=curl(i,j,:);
        div_r(count,:)=div(i,j,:);
        count=count+1;
    end
end

