clear all;
close all;
subs  = [1 2 3 5 6 8 9 10 12 14  16 17 18 19 23 24];%16


for s = 1 : length(subs)
    
    clearvars -except subs output_subs options_subs s logF_values t step N m_number

    data_path         = fileparts(mfilename('fullpath'));
    folder_path       = fullfile(data_path, 'Subjects');
    file_dcm          = 'DCMbeta%03d.mat';
    file_spm          = 'SPM%02d.mat';
    file_path_dcm     = fullfile(folder_path, sprintf(file_dcm, subs(s)));
    file_path_spm     = fullfile(folder_path, sprintf(file_spm, subs(s)));

    %%%%%% load structure DCM from SPM software %%%%%
    load(file_path_dcm); 

    %%%%%% load structure SPM from SPM software %%%%%
    load(file_path_spm);
    DCM.dt_flag    = 'L';       % 'L' for large TR, 'S" for small TR
    DCM.SPM        = SPM;

    % specify the options for the DCM analysis
    options                 = DCM.options;
    options.m0_coef         = 0;  
    options.freq_cutoff     = 400;   
    options.p0              = 0.45;  % single p0 value (for computational efficiency)  0.7  0.85
    options.iter            = 100;
    options.filter_str      = 5;
    options.restrictInputs  = 1;
    options.type            = 'E';
    options.search.flag     = 0; %Whether to search for the best parameter combination in the parameter space, 0 does not search, not 0 searches
    options.search.p0_all   =  0.1 : 0.1 : 0.9 ;
    options.search.m0_all   =  0.1 : 0.1 : 0.9 ;
    options.search.freq_all =  50  :  50 : 500 ;

    options.filter_flag     = 'H' ;
    options.connection_model = 1;  %% select different connection model Settings （1 2 3）

    %%%%%% select different connection model Settings%%%%
    [DCM] = DCM_Connection_Model(DCM,options);

    currentTimer = tic;
    [output, options] = DCM_Estimate(DCM, options); 
    toc(currentTimer)    


    output_subs{s} = output;
    options_subs{s} = options;

    logF_value = output_subs{s}{1}.logF; % Access directly since it's now a struct
    logF_values{s} = logF_value;
end








