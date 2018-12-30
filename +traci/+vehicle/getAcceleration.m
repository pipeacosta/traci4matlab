function accel = getAcceleration(vehID)
%getAcceleration Get the acceleration of the vehicle.
%   accel = accel = getAcceleration(VEHID) Returns the acceleration in
%   m/s^2 of this vehicle in the last step.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
accel = traci.vehicle.getUniversal(constants.VAR_ACCELERATION, vehID);
