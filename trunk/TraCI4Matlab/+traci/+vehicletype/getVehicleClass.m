function vehicleClass = getVehicleClass(typeID)
%getVehicleClass
%   vehicleClass = getVehicleClass(TYPEID) Returns the class of vehicles of 
%   this type.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
vehicleClass = traci.vehicletype.getUniversal(constants.VAR_VEHICLECLASS, typeID);