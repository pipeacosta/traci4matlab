function lcMode = getLaneChangeMode(vehID)
%getLaneChangeMode Gets the vehicle's lane change mode as a bitset.
%   lcMode = getLaneChangeMode(VEHID) Gets the vehicle's lane change mode
%   as a bitset.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
lcMode = traci.vehicle.getUniversal(constants.VAR_LANECHANGE_MODE, vehID);
