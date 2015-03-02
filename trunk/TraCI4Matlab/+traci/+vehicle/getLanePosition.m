function lanePosition = getLanePosition(vehID)
%getLanePosition Get the position of the vehicle along the lane.
%   lanePosition = getLanePosition(VEHID) Returns the position of the 
%   vehicle along the lane measured in m.

%   Copyright 2015 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
lanePosition = traci.vehicle.getUniversal(constants.VAR_LANEPOSITION, vehID);