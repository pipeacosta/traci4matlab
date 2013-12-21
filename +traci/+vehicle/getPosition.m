function position = getPosition(vehID)
%getPosition
%   position = getPosition(VEHID) Returns the x,y position of the named 
%   vehicle within the last step.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
position = traci.vehicle.getUniversal(constants.VAR_POSITION, vehID);