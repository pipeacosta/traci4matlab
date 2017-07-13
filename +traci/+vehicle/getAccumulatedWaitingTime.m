function accumWaitingTime = getAccumulatedWaitingTime(vehID)
%getAccumulatedWaitingTime Get the waiting time of the vehicle.
%   accumWaitingTime = getAccumulatedWaitingTime(VEHID) The accumulated
%   waiting time of a vehicle collects the vehicle's waiting time over a
%   certain time interval (interval length is set per option '--waiting-time-memory')

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getAccumulatedWaitingTime.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
accumWaitingTime = traci.vehicle.getUniversal(constants.VAR_ACCUMULATED_WAITING_TIME, vehID);
