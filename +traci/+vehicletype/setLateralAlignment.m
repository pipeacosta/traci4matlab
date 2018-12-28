function setLateralAlignment(typeID, latAlignment)
%setMaxSpeedLat Sets the preferred lateral alignment of this type.
%   setMaxSpeedLat(TYPEID,LATALIGNMENT) Sets the preferred lateral alignment
%   of this type.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
traci.sendStringCmd(constants.CMD_SET_VEHICLETYPE_VARIABLE,...
    constants.VAR_LATALIGNMENT, typeID, latAlignment);
