function result = isStopped(vehID)
%isStopped Return whether the vehicle is stopped.
%   isStopped = isStopped(VEHID) Return whether the vehicle is stopped.

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: isStopped.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
result = (traci.vehicle.getStopState(vehID) && 1) == 1;
