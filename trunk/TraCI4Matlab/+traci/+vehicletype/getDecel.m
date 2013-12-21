function decel = getDecel(typeID)
%getDecel
%   decel = getDecel(TYPEID) Returns the maximum deceleration in m/s^2 of 
%   vehicles of this type.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
decel = traci.vehicletype.getUniversal(constants.VAR_DECEL, typeID);