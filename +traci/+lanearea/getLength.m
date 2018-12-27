function length = getLength(detID)
%getLength Returns the length of the detector.
%   length = getLength(DETID) Returns the length of the given detector in m.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
length = traci.lanearea.getUniversal(constants.VAR_LENGTH, detID);