function setMaxSpeed(vehID, speed)
%setMaxSpeed
%   setMaxSpeed(VEHID,SPEED) Sets the maximum speed in m/s for this vehicle.

%   Copyright 2015 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
traci.sendDoubleCmd(constants.CMD_SET_VEHICLE_VARIABLE, constants.VAR_MAXSPEED, vehID, speed);