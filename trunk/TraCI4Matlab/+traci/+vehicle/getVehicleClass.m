function vehicleClass = getVehicleClass(vehID)
%getVehicleClass
%   vehicleClass = getVehicleClass(VEHID) Returns the vehicle class of this
%   vehicle.

%   Copyright 2015 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
vehicleClass = traci.vehicle.getUniversal(constants.VAR_VEHICLECLASS, vehID);