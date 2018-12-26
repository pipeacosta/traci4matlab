function JamLengthMeters = getJamLengthMeters(detID)
%getJamLengthMeters Return the jam length in vehicles.
%   JamLengthVehicle = getJamLengthVehicle(DETID) Returns the
%	jam length in meters within the last simulation step on
%	the given lanearea detector.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getJamLengthMeters.m 31 2016-09-28 15:16:56Z afacostag $

import traci.constants
JamLengthMeters = traci.lanearea.getUniversal(constants.JAM_LENGTH_METERS, detID);