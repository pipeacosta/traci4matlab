function setFilled(polygonID, filled)
%setFilled Sets the filled status of the polygon.
%   setFilled(POLYGONID, FILLED) Sets the filled status of the polygon.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants

traci.sendIntCmd(constants.CMD_SET_POLYGON_VARIABLE, constants.VAR_FILL,...
    polygonID, int32(filled));
