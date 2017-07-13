function distance = getDistance(vehID)
%getDistance Get the distance from the starting point of the vehicle.
%   distance = getDistance(VEHID) Returns the distance to the starting
%   point like an odometer

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getDistance.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
distance = traci.vehicle.getUniversal(constants.VAR_DISTANCE, vehID);
