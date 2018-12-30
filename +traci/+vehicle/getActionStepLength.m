function stepLength = getActionStepLength(vehID)
%getActionStepLength Returns the action step length for this vehicle.
%   stepLength = getActionStepLength(VEHID) Returns the action step length
%   for this vehicle.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
stepLength = traci.vehicle.getUniversal(constants.VAR_ACTIONSTEPLENGTH, vehID);
