function via = getVia(vehID)
%getVia Get the via edges of the vehicle.
%   via = getVia(VEHID) Returns the ids of via edges for this vehicle. 

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getVia.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
via = traci.vehicle.getUniversal(constants.VAR_VIA, vehID);
