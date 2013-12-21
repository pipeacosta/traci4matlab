function setColor(polygonID, color)
%setColor
%   setColor(POLYGONID,COLOR) Sets the rgba color of the polygon. COLOR is 
%   a four-element vector whose elements range from 0 to 255, they represent
%   the R, G, B and Alpha (unused) components of the color.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
global message
traci.beginMessage(constants.CMD_SET_POLYGON_VARIABLE, constants.VAR_COLOR, polygonID, 1+1+1+1+1);
message.string = [message.string uint8([sscanf(constants.TYPE_COLOR,'%x') color])]; 
traci.sendExact();