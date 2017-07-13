function minGapLat = getMinGapLat(vehID)
%getAngle Get the lateral gap at 50km/h.
%   minGapLat = getMinGapLat(VEHID) Returns The desired lateral gap of this
%   vehicle at 50km/h in m.

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getMinGapLat.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
minGapLat = traci.vehicle.getUniversal(constants.VAR_MINGAP_LAT, vehID);
