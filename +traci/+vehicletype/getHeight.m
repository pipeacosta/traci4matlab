function height = getHeight(typeID)
%getHeight Vehicle type height.
%   height = getHeight(TYPEID) Returns the height in m of vehicles of this
%   type.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
height = traci.vehicletype.getUniversal(constants.VAR_HEIGHT, typeID);
