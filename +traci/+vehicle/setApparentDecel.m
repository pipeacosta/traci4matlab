function setApparentDecel(vehID, decel)
%setApparentDecel Sets the apparent deceleration.
%   setApparentDecel(VEHID,DECEL) Sets the apparent deceleration in m/s^2
%   for this vehicle.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
traci.sendDoubleCmd(constants.CMD_SET_VEHICLE_VARIABLE,...
    constants.VAR_APPARENT_DECEL, vehID, decel);
