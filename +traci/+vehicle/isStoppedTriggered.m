function isTriggered = isStoppedTriggered(vehID)
%isStoppedTriggered Return whether the vehicle is stopped (triggered).
%   isTriggered = isStoppedTriggered(VEHID) Return whether the vehicle is
%   stopped and waiting for a person or container.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
isTriggered = (traci.vehicle.getStopState(vehID) && 12) > 0;
