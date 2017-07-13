function apparentDecel = getApparentDecel(vehID)
%getApparentDecel Get the aparent deceleration of the vehicle.
%   apparentDecel = getApparentDecel(VEHID) Returns the apparent
%   deceleration in m/s^2 of this vehicle.

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getApparentDecel.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
apparentDecel = traci.vehicle.getUniversal(constants.VAR_APPARENT_DECEL, vehID);
