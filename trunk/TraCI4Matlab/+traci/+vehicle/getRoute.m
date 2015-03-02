function route = getRoute(vehID)
%getRoute Get the vehicle route.
%   route = getRoute(VEHID) Returns a cell array of strings containing the 
%   ids of the edges the vehicle's route is made of.

%   Copyright 2015 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
route = traci.vehicle.getUniversal(constants.VAR_EDGES, vehID);