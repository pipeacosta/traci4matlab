function length = getLength(laneID)
%getLength
%   length = getLength(LANEID) Returns the length of the lane in m.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
length = traci.lane.getUniversal(constants.VAR_LENGTH, laneID);