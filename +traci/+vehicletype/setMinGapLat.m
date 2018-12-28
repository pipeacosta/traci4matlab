function setMinGapLat(typeID, minGapLat)
%setMinGapLat Sets the minimum lateral gap at 50km/h of this type.
%   setMinGapLat(TYPEID,MINGAPLAT) Sets the minimum lateral gap at 50km/h
%   of this type.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
traci.sendDoubleCmd(constants.CMD_SET_VEHICLETYPE_VARIABLE, constants.VAR_MINGAP_LAT, typeID, minGapLat);
