% input
xY.xyz = [30, -22, 50]; % target
xSPM.XYZmm = rand(3, 1000) * 100 - 50; % Randomly generated MNI coordinate data

% Use `spm_XYZreg` to find the nearest coordinate index
[~, Loc] = spm_XYZreg('NearestXYZ', xY.xyz, xSPM.XYZmm);

% output
disp(['Closest point index: ', num2str(Loc)]);
disp(['Closest point coordinates: ', mat2str(xSPM.XYZmm(:, Loc))]);