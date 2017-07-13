function lateralAlignment = getLateralAlignment(vehID)
%getLateralAlignment Get the lateral alignment.
%   lateralAlignment = getLateralAlignment(VEHID) Returns The preferred lateral
%   alignment of the vehicle.

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getLateralAlignment.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
lateralAlignment = traci.vehicle.getUniversal(constants.VAR_LATALIGNMENT, vehID);
