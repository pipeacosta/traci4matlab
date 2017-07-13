function height = getHeight(vehID)
%getHeight Get the height of the vehicle.
%   height = getHeight(VEHID) Returns the height in m of this vehicle. 

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getHeight.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
height = traci.vehicle.getUniversal(constants.VAR_HEIGHT, vehID);
