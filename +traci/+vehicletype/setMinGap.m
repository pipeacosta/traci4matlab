function setMinGap(typeID, minGap)
%setMinGap
%   setMinGap(TYPEID,MINGAP) Sets the offset (gap to front vehicle if 
%   halting) of vehicles of this type.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
traci.sendDoubleCmd(constants.CMD_SET_VEHICLETYPE_VARIABLE, constants.VAR_MINGAP, typeID, minGap);