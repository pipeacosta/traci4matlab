%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

clear all
close all
clc

import traci.constants

!sumo-gui -c C:\sumo-0.19.0\docs\tutorial\traci_tls\data\cross.sumocfg &

% Define the traffic light phases in a sumo-readable way
NSGREEN = 'GrGr';
NSYELLOW = 'yryr';
WEGREEN = 'rGrG';
WEYELLOW = 'ryry';

% Define the traffic light program. the duration of the phases is based on
% the time required for a car to cross the traffic light from north to
% south
PROGRAM = {WEYELLOW,WEYELLOW,WEYELLOW,NSGREEN,NSGREEN,NSGREEN,NSGREEN,NSGREEN,NSGREEN,NSGREEN,NSGREEN,NSYELLOW,NSYELLOW,WEGREEN};

programPointer = length(PROGRAM);
steps = zeros(1,800);
WElaneoccupancy = zeros(1,800);
NSlaneoccupancy = zeros(1,800);

% Initialize TraCI
traci.init();

traci.inductionloop.subscribe('0');
for i=1:length(steps)
    
    % Perform a simulation step (one second)
    traci.simulationStep();
    
    programPointer = min(programPointer+1, length(PROGRAM));
    
    indloopSubsResults = traci.inductionloop.getSubscriptionResults('0');
    no = indloopSubsResults(constants.LAST_STEP_VEHICLE_NUMBER);
    
    % Change the phase of the traffic light if a vehicle passed through the
    % induction loop
    if no > 0
        if programPointer == length(PROGRAM)-1
            programPointer = 1;
        else
            programPointer = 4;
        end
    end
    traci.trafficlights.setRedYellowGreenState('0', PROGRAM{programPointer});
    
    WElaneoccupancy(i) = traci.lane.getLastStepVehicleNumber('1i_0')+...
        traci.lane.getLastStepVehicleNumber('2i_0');
    NSlaneoccupancy(i) = traci.lane.getLastStepVehicleNumber('3i_0')+...
        traci.lane.getLastStepVehicleNumber('4i_0');
    
    steps(i) = i;
end

traci.close()

plot(steps, WElaneoccupancy)
hold;
plot(steps, NSlaneoccupancy, 'r')
legend('WE lane occupancy', 'NS lane occupancy')
title('Lane occupancy vs time')
xlabel('t (seconds)')
ylabel('number of vehicles')
    