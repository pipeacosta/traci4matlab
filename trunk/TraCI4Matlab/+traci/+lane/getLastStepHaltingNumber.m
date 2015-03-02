function lastStepHaltingNumber = getLastStepHaltingNumber(laneID)
%getLastStepHaltingNumber Get the number of halting vehicles.
%   lastStepHaltingNumber = getLastStepHaltingNumber(LANEID) Returns the 
%   total number of halting vehicles for the last time step on the given 
%   lane. A speed of less than 0.1 m/s is considered a halt.

%   Copyright 2015 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
lastStepHaltingNumber = traci.lane.getUniversal(constants.LAST_STEP_VEHICLE_HALTING_NUMBER, laneID);