function p = loadPoints(params)

% TODO VER QUE HAY EN ORDERED SAMPLES.
% NO SE COMO CREAR DESDE OCTAVE ESE ARCHIVO
% A ESE LO CREAMOS CUANDO TENIA MATLAB
% POR AHORA LO USO PARA NO PERDER TIEMPO EN ESO
load('orderedSamples.mat');

params.trainingInput = zeros(2, params.training);
params.trainingInput = x(1:params.training,1:2)';

params.trainingExpected = zeros(1, params.training);
params.trainingExpected = x(1:params.training,3)';

params.testInput = zeros(2, params.test);
params.testInput = x(params.training+1:params.points,1:2)';

params.testExpected = zeros(1, params.test);
params.testExpected = x(params.training+1:params.points,3)';

p = params;
end