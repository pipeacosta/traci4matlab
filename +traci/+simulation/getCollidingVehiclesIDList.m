function collidingIDList = getCollidingVehiclesIDList()
%getCollidingVehiclesIDList
%   collidingIDList = getCollidingVehiclesIDList()

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
collidingIDList = traci.simulation.getUniversal(constants.VAR_COLLIDING_VEHICLES_IDS);
