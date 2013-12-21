function speedFactor = getSpeedFactor(vehID)
%getSpeedFactor
%   speedFactor = getSpeedFactor(VEHID) Returns the chosen speed factor for
%   this vehicle.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
speedFactor = traci.vehicle.getUniversal(constants.VAR_SPEED_FACTOR, vehID);