function final_val = system_eq_dis(x_initial,time, control_input)

global simulation_result;

function dxdt = system_cont(t,x)
    
    dxdt = [  x(3)^3 - x(2);
              x(3);
              control_input;];

end

[t ,y] = ode45(@system_cont, [0 time],x_initial);

simulation_result = [simulation_result y'];

s = size(y);
final_val = y(s(1),:);
final_val = final_val';



end