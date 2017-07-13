function isParquing = isStoppedParking(vehID)
%isStoppedParking Return whether the vehicle is parquing.
%   isParquing = isStoppedParking(VEHID) Return whether the vehicle is
%   parking (implies stopped)

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: isStoppedParking.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
isParquing = (traci.vehicle.getStopState(vehID) && 2) == 2;