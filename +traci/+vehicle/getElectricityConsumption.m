function electricityConsumption = getElectricityConsumption(vehID)
%getElectricityConsumption Get the electricity consumption of the vehicle.
%   electricityConsumption = getElectricityConsumption(VEHID) Returns the
%   electricity consumption in mw for the last time step.

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getElectricityConsumption.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
electricityConsumption = traci.vehicle.getUniversal(constants.VAR_ELECTRICITYCONSUMPTION, vehID);
