function lateralLanePosition = getLateralLanePosition(vehID)
%getAngle Get the lateral position of the vehicle.
%   lateralLanePosition = getLateralLanePosition(VEHID) Returns The lateral
%   position of the vehicle on its current lane measured in m. 

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getLateralLanePosition.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
lateralLanePosition = traci.vehicle.getUniversal(constants.VAR_LANEPOSITION_LAT, vehID);
