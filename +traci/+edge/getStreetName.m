function streetName = getStreetName(edgeID)
%getStreetName Returns the street name of this edge.
%   streetName = getStreetName(EDGEID) Returns street name on the given
%   edge.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants

streetName = traci.edge.getUniversal(constants.VAR_NAME, edgeID);
