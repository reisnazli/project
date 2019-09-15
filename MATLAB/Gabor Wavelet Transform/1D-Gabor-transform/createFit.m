function [fitresult, gof] = createFit(ALL_TIME, ALL_TRAIN)
[xData, yData] = prepareCurveData( ALL_TIME, ALL_TRAIN );

ft = fittype( 'smoothingspline' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Create the plots.
figure( 'Name', 'fit2' );

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult, xData, yData );
legend( h, 'ALL_TRAIN vs. ALL_TIME', 'fit2', 'Location', 'NorthEast' );
% Label axes
xlabel ALL_TIME
ylabel ALL_TRAIN
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult, xData, yData, 'residuals' );
legend( h, 'fit2 - residuals', 'Zero Line', 'Location', 'NorthEast' );
% Label axes
xlabel ALL_TIME
ylabel ALL_TRAIN
grid on


