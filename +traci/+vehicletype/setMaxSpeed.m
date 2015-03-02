function setMaxSpeed(typeID, speed)
%setMaxSpeed
%   setMaxSpeed(TYPEID,SPEED) Sets the maximum speed in m/s of vehicles of 
%   this type.

%   Copyright 2015 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
traci.sendDoubleCmd(constants.CMD_SET_VEHICLETYPE_VARIABLE, constants.VAR_MAXSPEED, typeID, speed);