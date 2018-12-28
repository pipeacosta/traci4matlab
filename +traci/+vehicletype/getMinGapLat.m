function minGapLat = getMinGapLat(typeID)
%getMinGapLat Desired lateral gap.
%   minGapLat = getMinGapLat(TYPEID) Returns The desired lateral gap of
%   this type at 50km/h in m.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
minGapLat = traci.vehicletype.getUniversal(constants.VAR_MINGAP_LAT, typeID);
