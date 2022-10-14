function tests = docTest
tests = functiontests(localfunctions);
end

function docRunsWithoutWarningTest(testCase)

fig = figure;
testCase.addTeardown(@close, fig);

testCase.verifyWarningFree(@GettingStarted);
end
