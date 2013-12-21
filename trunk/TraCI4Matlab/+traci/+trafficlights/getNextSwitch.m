function nextSwitch = getNextSwitch(tlsID)
%getNextSwitch.
%   nextSwitch = getNextSwitch(TLSID) Returns the time in ms at which the
%   next phase change will be performed. 

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
nextSwitch = traci.trafficlights.getUniversal(constants.TL_NEXT_SWITCH, tlsID);