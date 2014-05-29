function tests = avi_to_raster_Test %unit testing for avi_to_raster_2
tests=functiontests(localfunctions);
end


function testSolution(testCase)
y=zeros(100,10);
for i =1:10
    y(:,i)=i;
end

actSolution=avi_to_raster_2('testCase.avi');
expSolution=y;
verifyEqual(testCase,actSolution,expSolution);
end

function testSolution_1(testCase)
y=zeros(10,10,10);
for i =1:10
    y(:,:,i)=i/255;
end

actSolution=read_avi_2('testCase.avi');
expSolution=round(y.*255);
verifyEqual(testCase,actSolution,expSolution);
end