function changeLane(vehID, laneIndex, duration)
%add Make the vehicle to switch the lane.
%   changeLane(VEHID,LANEINDEX,DURATION) Makes the vehicle with ID VEHID to
%   change the lane to the specified in the index LANEINDEX for the given
%   time duration.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
global message
traci.beginMessage(constants.CMD_SET_VEHICLE_VARIABLE, constants.CMD_CHANGELANE,...
    vehID, 1+4+1+1+1+4);
message.string = [message.string uint8(sscanf(constants.TYPE_COMPOUND,'%x')) ...
    fliplr(typecast(int32(2),'uint8')) uint8([sscanf(constants.TYPE_BYTE,'%x') ...
    laneIndex sscanf(constants.TYPE_INTEGER,'%x')]) ...
    fliplr(typecast(int32(duration),'uint8'))];
traci.sendExact();