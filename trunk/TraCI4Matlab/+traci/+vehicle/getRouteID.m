function routeID = getRouteID(vehID)
%getRouteID
%   routeID = getRouteID(VEHID) Returns the id of the route of the named 
%   vehicle.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
routeID = traci.vehicle.getUniversal(constants.VAR_ROUTE_ID, vehID);