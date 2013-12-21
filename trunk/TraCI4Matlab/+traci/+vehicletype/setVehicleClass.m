function setVehicleClass(typeID, clazz)
%setVehicleClass
%   setVehicleClass(TYPEID,CLASS) Sets the class of vehicles of this type.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
traci.sendStringCmd(constants.CMD_SET_VEHICLETYPE_VARIABLE, constants.VAR_VEHICLECLASS, typeID, clazz);