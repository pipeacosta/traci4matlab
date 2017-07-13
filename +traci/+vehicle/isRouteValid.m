function isvalid = isRouteValid(vehID)
%isRouteValid Determine whether the current route of the vehicle is valid.
%   isvalid = isRouteValid(VEHID) Determine whether the current route of the
%   vehicle is valid (i.e. all the edges along the route are connected).

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: isRouteValid.m 36 2017-07-07 16:21:44Z afacostag $

import traci.constants
isvalid = traci.vehicle.getUniversal(constants.VAR_ROUTE_VALID, vehID);
