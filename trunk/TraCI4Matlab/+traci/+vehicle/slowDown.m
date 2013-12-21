function slowDown(vehID, speed, duration)
%slowDown
%   slowDown(VEHID,SPEED,DURATION) Reduces the speed of the vehicle to the 
%   given for the given amount of time.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
global message
traci.beginMessage(constants.CMD_SET_VEHICLE_VARIABLE, constants.CMD_SLOWDOWN,...
    vehID, 1+4+1+8+1+4);
message.string = [message.string uint8(sscanf(constants.TYPE_COMPOUND,'%x')) ...
    fliplr(typecast(int32(2),'uint8')) uint8(sscanf(constants.TYPE_DOUBLE,'%x')) ...
    fliplr(typecast(speed,'uint8')) uint8(sscanf(constants.TYPE_INTEGER,'%x')) ...
    fliplr(typecast(int32(duration),'uint8'))];
traci.sendExact();