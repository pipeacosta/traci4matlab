function waitingTime = getWaitingTime(edgeID)
%waitingTime Returns the waiting time on the given edge.
%   daptedTraveltime = getWaitingTime(EDGEID) Returns the sum of the
%   waiting time of all vehicles currently onthat edge (see traci.vehicle.getWaitingTime).

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
waitingTime = traci.edge.getUniversal(constants.VAR_WAITING_TIME, edgeID);
