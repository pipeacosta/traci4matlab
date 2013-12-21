function sendDoubleCmd(cmdID, varID, objID, value)
%sendDoubleCmd An internal function to build a message which sends a double.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
global message
traci.beginMessage(cmdID, varID, objID, 1+8);
message.string = [message.string uint8(sscanf(constants.TYPE_DOUBLE,'%x')) ...
    fliplr(typecast(value,'uint8'))];
traci.sendExact();