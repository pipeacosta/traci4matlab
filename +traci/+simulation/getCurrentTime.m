function currentTime = getCurrentTime()
%getCurrentTime  Returns the current simulation time in ms.
%   currentTime = getCurrentTime() Returns the current simulation time in 
%   ms. 

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getCurrentTime.m 48 2018-12-26 15:35:20Z afacostag $

import traci.constants
currentTime = traci.simulation.getUniversal(constants.VAR_TIME_STEP);