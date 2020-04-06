import matlab.unittest.*;
import matlab.unittest.plugins.*;

ws = pwd;
src = fullfile(ws, 'source');
addpath(src);

% Create and configure the runner
runner = TestRunner.withTextOutput('Verbosity',3);

% Add the TAP plugin
resultsDir = fullfile(ws, 'test-results');
mkdir(resultsDir);
    
resultsFile = fullfile(resultsDir, 'testResults.xml');
runner.addPlugin(XMLPlugin.producingJUnitFormat(resultsFile));
   
mkdir('reports')
runner.addPlugin(TestReportPlugin.producingHTML('reports'));

runner.run(testsuite(pwd,'IncludeSubfolders',true));
