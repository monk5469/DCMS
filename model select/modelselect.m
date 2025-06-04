%%21 models
tt=tic
matlabbatch{1}.spm.dcm.bms.inference.dir = {'F:\code organization\model select\21modelspace\result21'};
matlabbatch{1}.spm.dcm.bms.inference.sess_dcm = {};
matlabbatch{1}.spm.dcm.bms.inference.model_sp = {'F:\code organization\model select\21modelspace\model_space.mat'};
matlabbatch{1}.spm.dcm.bms.inference.load_f = {''};
matlabbatch{1}.spm.dcm.bms.inference.method = 'RFX';
matlabbatch{1}.spm.dcm.bms.inference.family_level.family_file = {''};
matlabbatch{1}.spm.dcm.bms.inference.bma.bma_no = 0;
matlabbatch{1}.spm.dcm.bms.inference.verify_id = 1;
spm_jobman('run',matlabbatch);
toc(tt)


% %% 4 classify
% tt=tic
% matlabbatch{1}.spm.dcm.bms.inference.dir = {'F:\code organization\model select\21modelspace\result4'};
% matlabbatch{1}.spm.dcm.bms.inference.sess_dcm = {};
% matlabbatch{1}.spm.dcm.bms.inference.model_sp = {'F:\code organization\model select\21modelspace\model_space.mat'};
% matlabbatch{1}.spm.dcm.bms.inference.load_f = {''};
% matlabbatch{1}.spm.dcm.bms.inference.method = 'RFX';
% matlabbatch{1}.spm.dcm.bms.inference.family_level.family_file = {'F:\code organization\model select\classify\21 model classification.mat'};
% matlabbatch{1}.spm.dcm.bms.inference.bma.bma_no = 0;
% matlabbatch{1}.spm.dcm.bms.inference.verify_id = 1;
% spm_jobman('run',matlabbatch);
% toc(tt)

% %% The winning model family（13models）
% tt=tic
% matlabbatch{1}.spm.dcm.bms.inference.dir = {'F:\code organization\model select\21modelspace\result13'};
% matlabbatch{1}.spm.dcm.bms.inference.sess_dcm = {};
% matlabbatch{1}.spm.dcm.bms.inference.model_sp = {'F:\code organization\model select\21modelspace\winning model family space\model_space.mat'};
% matlabbatch{1}.spm.dcm.bms.inference.load_f = {''};
% matlabbatch{1}.spm.dcm.bms.inference.method = 'RFX';
% matlabbatch{1}.spm.dcm.bms.inference.family_level.family_file = {''};
% matlabbatch{1}.spm.dcm.bms.inference.bma.bma_no = 0;
% matlabbatch{1}.spm.dcm.bms.inference.verify_id = 1;
% spm_jobman('run',matlabbatch);
% toc(tt)
