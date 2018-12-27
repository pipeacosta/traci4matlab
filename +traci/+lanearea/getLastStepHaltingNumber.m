function lastStepHaltingNumber = getLastStepHaltingNumber(detID)
%getLastStepHaltingNumber Get the number of halting vehicles.
%   lastStepHaltingNumber = getLastStepHaltingNumber(DETID) Returns the
%   number of vehicles which were halting during the last time step.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
lastStepHaltingNumber = traci.lanearea.getUniversal(constants.LAST_STEP_VEHICLE_HALTING_NUMBER, detID);