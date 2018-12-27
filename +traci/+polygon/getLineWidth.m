function lineWidth = getLineWidth(polygonID)
%getLineWidth Returns drawing width of unfilled polygon.
%   lineWidth = getLineWidth(POLYGONID) Returns drawing width of unfilled
%   polygon.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
lineWidth = traci.polygon.getUniversal(constants.VAR_WIDTH, polygonID);
