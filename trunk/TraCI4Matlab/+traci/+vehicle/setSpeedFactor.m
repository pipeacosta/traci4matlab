function setSpeedFactor(vehID, factor)
%setSpeedFactor Sets the speed factor within the last step.
%   setSpeedFactor(VEHID,FACTOR) Sets the speed factor for the named
%   vehicle within the last step.

%   Copyright 2015 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
traci.sendDoubleCmd(constants.CMD_SET_VEHICLE_VARIABLE, constants.VAR_SPEED_FACTOR, vehID, factor);