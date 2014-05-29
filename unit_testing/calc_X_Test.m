function tests = calc_X_Test
tests=functiontests(localfunctions);
end

function testSolution_normal(testCase)
load('testdata.mat');
actSolution=calc_X_2('normal_test.avi');
actSolution=round(actSolution*10000000)/10000000;
expSolution=X_normal;
expSolution=round(expSolution*10000000)/10000000;
verifyEqual(testCase,actSolution,expSolution);
end

function testSolution_abnormal(testCase)
load('testdata.mat');
actSolution=calc_X_2('abnormal_test.avi');
actSolution=round(actSolution*10000000)/10000000;
expSolution=X_abnormal;
expSolution=round(expSolution*10000000)/10000000;
verifyEqual(testCase,actSolution,expSolution);
end