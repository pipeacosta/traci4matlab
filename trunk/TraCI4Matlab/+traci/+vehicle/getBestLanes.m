function bestLanes = getBestLanes(vehID)
%getBestLanes
%   bestLanes = getBestLanes(VEHID) Returns information about the wish to 
%   use subsequent edges' lanes, which is stored in a cell array. The
%   information includes laneID, length, occupation, offset, 
%   allowsContinuation and nextLanes. 

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
bestLanes = traci.vehicle.getUniversal(constants.VAR_BEST_LANES, vehID);