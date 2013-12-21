function accel = getAccel(typeID)
%getAccel
%   accel = getAccel(TYPEID) Returns the maximum acceleration in m/s^2 of 
%   vehicles of this type.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
accel = traci.vehicletype.getUniversal(constants.VAR_ACCEL, typeID);