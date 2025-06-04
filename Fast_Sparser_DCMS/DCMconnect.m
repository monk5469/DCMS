

clear all;
close all;
subs  = [1 2 3 5 6 8 9 10 12 14  16 17 18 19 23 24];
for s = 1 : length(subs)
    

data_path         = fileparts(mfilename('fullpath'));
folder_path       = fullfile(data_path, 'Subjects');
file_dcm          = 'DCMbeta%03d.mat';
file_spm          = 'SPM%02d.mat';
file_path_dcm     = fullfile(folder_path, sprintf(file_dcm, subs(s)));
file_path_spm     = fullfile(folder_path, sprintf(file_spm, subs(s)));

load(file_path_dcm); 

DCM.b(:, :, [2,5]) = [ ];     %This simulation focuses on only three effects: 
                               %total stimulation, immediate repetition, and delayed repetition 
DCM.c(:,[4,5])     = [ ];  
%% b矩阵的变化

      DCM.b(1,:,2) = 0; 
    DCM.b(1,:,3) = 0; 
%%

    DCM.U.u(:,[2,5]) = [ ];
    DCM.U.name(:,[2,5]) = [ ];
    unique_filename = sprintf('DCM_%01d.mat', s);
  
    save_path = fullfile('F:\ds000117\DCMmodel\modelnew19', unique_filename);
    save(save_path, 'DCM');
end



