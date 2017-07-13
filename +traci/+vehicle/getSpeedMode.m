function speedMode = getSpeedMode(vehID)
%getSpeedMode Get the speed mode of the vehicle.
%   speedMode = getSpeedMode(VEHID) Returns the speed mode of the vehicle.

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getSpeedMode.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
speedMode = traci.vehicle.getUniversal(constants.VAR_SPEEDSETMODE, vehID);
