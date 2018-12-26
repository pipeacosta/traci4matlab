function accel = getAccel(vehID)
%getAccel Get the acceleration of the vehicle.
%   accel = getAccel(VEHID) Returns the maximum acceleration possibility in
%   m/s^2 of this vehicle.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getAccel.m 48 2018-12-26 15:35:20Z afacostag $

import traci.constants
accel = traci.vehicle.getUniversal(constants.VAR_ACCEL, vehID);