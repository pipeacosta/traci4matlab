function isFilled = getFilled(polygonID)
%getFilled Returns whether the polygon is filled.
%   isFilled = getFilled(POLYGONID) Returns whether the polygon is filled.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
isFilled = traci.polygon.getUniversal(constants.VAR_FILL, polygonID);
