function length = getLength(vehID)
%getLength
%   length = getLength(VEHID) Returns the length in m of the given vehicle.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
length = traci.vehicle.getUniversal(constants.VAR_LENGTH, vehID);