function linkNumber = getLinkNumber(laneID)
%getLinkNumber
%   linkNumber = getLinkNumber(LANEID) Returns the number of connections to
%   successive lanes.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
linkNumber = traci.lane.getUniversal(constants.LANE_LINK_NUMBER, laneID);