

function [Beta] = DCM_Adjust_beta(nR,DCM)

%  Adjust the beta value according to the effect of interest in the experiment.

contrasts = [1 1 1  1 1 1  1 1 1;   
             0 1 0  0 1 0  0 1 0; % immediate repetition
             0 0 1  0 0 1  0 0 1; % delayed repetition            
             ]; % fame
                        

for betai = 1:size(contrasts,1)
    ind   = find(contrasts(betai,:)~=0);
    beta  = DCM.xY(nR).beta(1 : 9);
    betas = 0;
    for c = 1:length(ind);
        betas = betas + contrasts(betai,ind(c)) *beta(ind(c));
    end
    Beta(:,betai) =  betas;
end

end