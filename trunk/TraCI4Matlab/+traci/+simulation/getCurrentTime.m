function currentTime = getCurrentTime()
%getCurrentTime
%   currentTime = getCurrentTime() Returns the current simulation time in 
%   ms. 

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
currentTime = traci.simulation.getUniversal(constants.VAR_TIME_STEP);