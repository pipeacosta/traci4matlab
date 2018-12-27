function lastStepVehicleIDs = getLastStepVehicleIDs(detID)
%getLastStepVehicleIDs Get the IDs of the vehicles in the detector.
%   lastStepVehicleIDs = getLastStepVehicleIDs(DETID) Returns the list of
%   ids of vehicles that were on the named detector in the last simulation step.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
lastStepVehicleIDs = traci.lanearea.getUniversal(constants.LAST_STEP_VEHICLE_ID_LIST, detID);