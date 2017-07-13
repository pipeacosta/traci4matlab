function line = getLine(vehID)
%getLine Get the line information of the vehicle.
%   line = getLine(VEHID) Returns the line information of this vehicle. 

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getLine.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
line = traci.vehicle.getUniversal(constants.VAR_LINE, vehID);
