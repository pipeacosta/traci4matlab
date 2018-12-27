function setLineWidth(polygonID, lineWidth)
%setLineWidth Sets the line width for drawing unfilled polygon.
%   setLineWidth(POLYGONID, LINEWIDTH) Sets the line width for drawing
%   unfilled polygon

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants

traci.sendDoubleCmd(constants.CMD_SET_POLYGON_VARIABLE, constants.VAR_WIDTH,...
    polygonID, lineWidth);
