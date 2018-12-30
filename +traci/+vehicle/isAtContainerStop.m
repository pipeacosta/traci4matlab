function isIt = isAtContainerStop(vehID)
%isAtContainerStop Return whether the vehicle is stopped at a container
%stop.
%   isIt = isAtContainerStop(VEHID) Return whether the vehicle is stopped
%   at a container stop.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
isIt = (traci.vehicle.getStopState(vehID) && 32) == 32;
