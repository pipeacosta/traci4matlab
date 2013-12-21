function links = getLinks(laneID)
%getLinks
%   links = getLinks(LANEID) Returns a cell containing ids of successor 
%   lanes together with priority, open and foe.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
links = traci.lane.getUniversal(constants.LANE_LINKS, laneID);