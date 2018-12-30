function isIt = isAtBusStop(vehID)
%isAtBusStop Return whether the vehicle is stopped at a bus stop.
%   isIt = isAtBusStop(VEHID) Return whether the vehicle is stopped at a
%   bus stop

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
isIt = (traci.vehicle.getStopState(vehID) && 16) == 16;
