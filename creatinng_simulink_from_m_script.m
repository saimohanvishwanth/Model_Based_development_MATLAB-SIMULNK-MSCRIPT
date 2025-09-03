% Create Simulink model
model_name = "Const_term_model";
new_system(model_name);
open_system(model_name);

% Add the Constant block
constant_block = [model_name, '/Constant'];
add_block('Simulink/Sources/Constant', constant_block, 'Position', [100 100 130 130]);

% Add the Terminator block
terminator_block = [model_name, '/Terminator'];
add_block('Simulink/Sink/Terminator', terminator_block, 'Position', [200 100 230 130]);

% Add the line connecting Constant to Terminator
add_line(model_name, 'Constant/1', 'Terminator/1');

% Save the system
save_system(model_name);
