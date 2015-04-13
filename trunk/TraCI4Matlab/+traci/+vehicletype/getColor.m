function color = getColor(typeID)
%getColor Returns the color of this type of vehicle.
%   color = getColor(TYPEID)Returns the color of this type of vehicle.

%   Copyright 2015 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
color = traci.vehicletype.getUniversal(constants.VAR_COLOR, typeID);