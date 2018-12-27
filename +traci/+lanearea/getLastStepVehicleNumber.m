function lastStepVehicleNumber = getLastStepVehicleNumber(detID)
%getLastStepVehicleNumber Get the number of the vehicles in the detector.
%   lastStepVehicleNumber = getLastStepVehicleNumber(DETID) Returns the
%   number of vehicles that were on the named detector within the last
%   simulation step.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
lastStepVehicleNumber = traci.lanearea.getUniversal(constants.LAST_STEP_VEHICLE_NUMBER, detID);