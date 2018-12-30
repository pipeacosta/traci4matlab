function setType(vehID, vehTypeID)
%setType Sets the id of the named vehicle type.
%   setType(VEHID,TYPEID) Sets the id of the vehicle type for the named
%   vehicle.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
traci.sendStringCmd(constants.CMD_SET_VEHICLE_VARIABLE, constants.VAR_TYPE, vehID, vehTypeID);
