
 function [DCM] = DCM_Connection_Model(dcm,options)
%------------------------------------------------------------
%This function is used to edit the connection model.
%This simulation edited three connection models and focused on only
%three stimuli (full stimulus, immediate repetition, delayed repetition).
%-----------------------------------------------------------------------
DCM                = dcm; 
DCM.U.u            = [dcm.U.u(:,1) dcm.U.u(:,3) dcm.U.u(:,4)];
DCM.U.name         = [dcm.U.name(1) dcm.U.name(3) dcm.U.name(4)];
DCM.b(:, :, [2,5]) = [ ];     %This simulation focuses on only three effects: 
                              %total stimulation, immediate repetition, and delayed repetition 
DCM.c(:,[4,5])     = [ ];                           

if options.connection_model == 1
    
    DCM.b(1,2,2) = 0; 
    DCM.b(2,1,2) = 0; 
    DCM.b(1,2,3) = 0; 
    DCM.b(2,1,3) = 0; 
    
end

if options.connection_model == 2
    
    DCM.b(1,:,2) = 0; 
    DCM.b(2,1,2) = 0; 
    DCM.b(1,:,3) = 0; 
    DCM.b(2,1,3) = 0; 
    
end

if options.connection_model == 3
    
    DCM.b(1,2,2) = 0; 
    DCM.b(2,:,2) = 0; 
    DCM.b(1,2,3) = 0; 
    DCM.b(2,:,3) = 0; 
    
end

if options.connection_model == 4
    
    DCM.b(1,:,2) = 0; 
    DCM.b(2,2,2) = 0; 
    DCM.b(1,1,3) = 0; 
    DCM.b(2,:,3) = 0; 
    
end

if options.connection_model == 5
    
    DCM.b(1,1,2) = 0; 
    DCM.b(2,:,2) = 0; 
    DCM.b(1,:,3) = 0; 
    DCM.b(2,2,3) = 0; 
    
end

if options.connection_model == 6
    
    DCM.b(1,1,2) = 0; 
    DCM.b(2,:,2) = 0; 
    DCM.b(1,1,3) = 0; 
    DCM.b(2,:,3) = 0; 
    
end

if options.connection_model == 7
    
    DCM.b(1,:,2) = 0; 
    DCM.b(2,2,2) = 0; 
    DCM.b(1,:,3) = 0; 
    DCM.b(2,2,3) = 0; 
    
end

if options.connection_model == 8
    
    DCM.b(1,2,2) = 0; 
    DCM.b(2,1,3) = 0; 
    
end

if options.connection_model == 9
    
    DCM.b(2,1,2) = 0; 
    DCM.b(1,2,3) = 0; 
    
end

if options.connection_model == 10
    
    DCM.b(2,1,2) = 0; 
    DCM.b(2,1,3) = 0; 
    
end

if options.connection_model == 11
    
    DCM.b(1,2,2) = 0; 
    DCM.b(1,2,3) = 0; 
    
end

if options.connection_model == 12
    
    DCM.b(:,2,2) = 0; 
    DCM.b(2,:,3) = 0; 
    
end

if options.connection_model == 13
    
    DCM.b(2,:,2) = 0; 
    DCM.b(:,2,3) = 0; 
    
end

if options.connection_model == 14
    
    DCM.b(2,:,2) = 0; 
    DCM.b(2,:,3) = 0; 
    
end

if options.connection_model == 15
    
    DCM.b(:,2,2) = 0; 
    DCM.b(:,2,3) = 0; 
    
end

if options.connection_model == 16
    
    DCM.b(1,:,2) = 0; 
    DCM.b(:,1,3) = 0; 
    
end

if options.connection_model == 17
    
    DCM.b(:,1,2) = 0; 
    DCM.b(1,:,3) = 0; 
    
end

if options.connection_model == 18
    
    DCM.b(:,1,2) = 0; 
    DCM.b(:,1,3) = 0; 
    
end

if options.connection_model == 19
    
    DCM.b(1,:,2) = 0; 
    DCM.b(1,:,3) = 0; 
    
end

if options.connection_model == 20
    
    DCM.b=DCM.b;
    
end

if options.connection_model == 21
    
    DCM.b(:,:,1) = 0;
    DCM.b(:,:,2) = 0;
    DCM.b(:,:,3) = 0;
    
end

end
