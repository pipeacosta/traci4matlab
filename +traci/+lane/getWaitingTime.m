function waitingTime = getWaitingTime(laneID)
%getWaitingTime Returns the waiting time in seconds.
%   waitingTime = getWaitingTime(LANEID) eturns the waiting time in seconds
%   for the given lane.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants

waitingTime = traci.lane.getUniversal(constants.VAR_WAITING_TIME, laneID);