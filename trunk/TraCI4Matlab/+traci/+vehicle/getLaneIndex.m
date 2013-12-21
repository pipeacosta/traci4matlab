function laneIndex = getLaneIndex(vehID)
%getLaneIndex
%   laneIndex = getLaneIndex(VEHID) Returns the index of the lane the named
%   vehicle was at within the last step.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
laneIndex = traci.vehicle.getUniversal(constants.VAR_LANE_INDEX, vehID);