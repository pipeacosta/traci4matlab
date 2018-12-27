function laneID = getLaneID(detID)
%getLaneID Returns the id of the lane the detector is on.
%   laneID = getLaneID(DETID) Returns the id of the lane the detector is on.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
laneID = traci.lanearea.getUniversal(constants.VAR_LANE_ID, detID);