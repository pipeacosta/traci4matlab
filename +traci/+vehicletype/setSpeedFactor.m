function setSpeedFactor(typeID, factor)
%setSpeedFactor
%   setSpeedFactor(TYPEID,FACTOR) Sets the speed factor for the vehicles of
%   this type.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
traci.sendDoubleCmd(constants.CMD_SET_VEHICLETYPE_VARIABLE, constants.VAR_SPEED_FACTOR, typeID, factor);