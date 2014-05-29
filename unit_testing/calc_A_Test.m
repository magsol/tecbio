function tests = calc_A_Test
tests=functiontests(localfunctions);
end

function testSolution_normal(testCase)
load('unit_test_data.mat');
actSolution=calc_A_higher_2(5,'normal_test.avi')
actSolution=round(actSolution*10000000)/10000000;
expSolution=A_normal;
expSolution=round(expSolution*10000000)/10000000;
verifyEqual(testCase,actSolution,expSolution);
end

function testSolution_abnormal(testCase)
load('unit_test_data.mat');
actSolution=calc_A_higher_2(5,'abnormal_test.avi')
actSolution=round(actSolution*10000000)/10000000;
expSolution=A_abnormal;
expSolution=round(expSolution*10000000)/10000000;
verifyEqual(testCase,actSolution,expSolution);
end