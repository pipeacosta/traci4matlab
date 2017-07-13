function maxSpeedLat = getMaxSpeedLat(vehID)
%getMaxSpeedLat Get the maximum lateral speed.
%   maxSpeedLat = getMaxSpeedLat(VEHID) Returns the maximum lateral speed
%   in m/s of this vehicle.

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getMaxSpeedLat.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
maxSpeedLat = traci.vehicle.getUniversal(constants.VAR_MAXSPEED_LAT, vehID);
