function moveTo(vehID, laneID, pos)
%moveTo
%   moveTo(VEHID,LANEID,POS) Commands the vehicle to move to the specified
%   position on the given lane.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
global message
traci.beginMessage(constants.CMD_SET_VEHICLE_VARIABLE, constants.VAR_MOVE_TO, vehID,...
    1+4+1+4+length(laneID)+1+8);
message.string = [message.string uint8(sscanf(constants.TYPE_COMPOUND,'%x')) ...
    fliplr(typecast(int32(2),'uint8'))];
message.string = [message.string uint8(sscanf(constants.TYPE_STRING,'%x')) ...
    fliplr(typecast(int32(length(laneID)),'uint8')) uint8(laneID)];
message.string = [message.string uint8(sscanf(constants.TYPE_DOUBLE,'%x')) ...
    fliplr(typecast(pos,'uint8'))];
traci.sendExact();