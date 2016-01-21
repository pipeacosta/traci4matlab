clear all
close all
clc

import traci.constants

% Get the filename of the example scenario
[scenarioPath,~,~] = fileparts(which(mfilename));
% scenarioPath = [scenarioPath '\inter_palmas'];
cd(scenarioPath);

system(['sumo-gui -c ' './hello.sumocfg&']);

% execute the TraCI control loop"""
traci.init();

% Initialize the vectors where the emissions will be recorded
emissionsNoTls = zeros(1,100);

t = 1:100;

% main loop. do something every simulation step until no more vehicles are
% loaded or running
for i = 1:100
    traci.simulationStep();
    
    % Take the emissions for each time step
    if i < 48
        emissionsNoTls(i) = traci.vehicle.getCO2Emission('veh0');
    end
    
    
end

traci.close()

system(['sumo-gui -c ' './hello_patched.sumocfg&']);

% execute the TraCI control loop"""
traci.init();

emissionsTls = zeros(1,100);

% main loop. do something every simulation step until no more vehicles are
% loaded or running
for i = 1:100
    traci.simulationStep();
    
    % Take the emissions for each time step
    if i < 72
        emissionsTls(i) = traci.vehicle.getCO2Emission('veh0');
    end
    
    
end

traci.close()

totalEmissionsNoTls = sum(emissionsNoTls)/1000
totalEmissionsTls = sum(emissionsTls)/1000

plot(t,emissionsNoTls)
hold;
plot(t,emissionsTls,'r')
title('CO2 emissions influenced by tls');
xlabel('t')
ylabel('CO2 emissions [mg]')
legend('No tls','With tls');