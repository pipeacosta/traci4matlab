function laneNumber = getLaneNumber(edgeID)
%getLaneNumber Returns the number of lanes of this edge.
%   laneNumber = getLaneNumber(EDGEID) Returns the number of lanes on the
%   given edge.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants

laneNumber = traci.edge.getUniversal(constants.VAR_LANE_INDEX, edgeID);
