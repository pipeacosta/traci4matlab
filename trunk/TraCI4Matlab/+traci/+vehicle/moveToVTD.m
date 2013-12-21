function moveToVTD(vehID, edgeID, lane, x, y)
%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
global message

traci.beginMessage(constants.CMD_SET_VEHICLE_VARIABLE, constants.VAR_MOVE_TO_VTD,...
    vehID,1+4+1+4+length(edgeID)+1+4+1+8+1+8);
message.string = [message.string uint8(sscanf(constants.TYPE_COMPOUND,'%x')) ...
    fliplr(typecast(int32(4),'uint8'))];
message.string = [message.string uint8(sscanf(constants.TYPE_STRING,'%x')) ...
    fliplr(typecast(int32(length(edgeID)),'uint8')) uint8(edgeID)];
message.string = [message.string uint8(sscanf(constants.TYPE_INTEGER,'%x')) ...
    fliplr(typecast(int32(lane),'uint8'))];
message.string = [message.string uint8(sscanf(constants.TYPE_DOUBLE,'%x')) ...
    fliplr(typecast(x,'uint8'))];
message.string = [message.string uint8(sscanf(constants.TYPE_DOUBLE,'%x')) ...
    fliplr(typecast(y,'uint8'))];
traci.sendExact();