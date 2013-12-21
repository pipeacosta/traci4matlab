function maxSpeed = getMaxSpeed(laneID)
% getMaxSpeed Maximum allowed speed in the lane.
%   maxSpeed = getMaxSpeed(LANEID) Returns the maximum allowed speed on the
%   lane in m/s.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
maxSpeed = traci.lane.getUniversal(constants.VAR_MAXSPEED, laneID);