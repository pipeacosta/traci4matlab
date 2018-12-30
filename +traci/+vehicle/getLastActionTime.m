function lastActionTime = getLastActionTime(vehID)
%getLastActionTime Returns the time of last action point for this vehicle.
%   lastActionTime = getLastActionTime(VEHID) Returns the time of last
%   action point for this vehicle.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
lastActionTime = traci.vehicle.getUniversal(constants.VAR_LASTACTIONTIME, vehID);
