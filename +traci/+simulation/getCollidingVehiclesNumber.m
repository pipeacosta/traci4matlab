function collidingNumber = getCollidingVehiclesNumber()
%getCollidingVehiclesNumber
%   collidingNumber = getCollidingVehiclesNumber()

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
collidingNumber = traci.simulation.getUniversal(constants.VAR_COLLIDING_VEHICLES_NUMBER);
