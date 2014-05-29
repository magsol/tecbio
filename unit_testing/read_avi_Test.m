function tests = read_avi_Test
tests=functiontests(localfunctions);
end


function testSolution(testCase)
y=zeros(10,10,10);
for i =1:10
    y(:,:,i)=i/255;
end

actSolution=read_avi_2('testCase.avi');
expSolution=round(y.*255);
verifyEqual(testCase,actSolution,expSolution);
end

