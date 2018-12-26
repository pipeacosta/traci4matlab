function JamLengthVehicle = getJamLengthVehicle(detID)
%getJamLengthVehicle Return the jam length in vehicles.
%   JamLengthVehicle = getJamLengthVehicle(DETID) Returns the
%	jam length in vehicles within the last simulation step on
%	the given lanearea detector.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getJamLengthVehicle.m 31 2016-09-28 15:16:56Z afacostag $

import traci.constants
JamLengthVehicle = traci.lanearea.getUniversal(constants.JAM_LENGTH_VEHICLE, detID);