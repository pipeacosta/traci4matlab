function slope = getSlope(vehID)
%getSlope Get the slope of the vehicle.
%   slope = getSlope(VEHID) Returns the slope at the current position of
%   the vehicle in degrees

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getSlope.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
slope = traci.vehicle.getUniversal(constants.VAR_SLOPE, vehID);
