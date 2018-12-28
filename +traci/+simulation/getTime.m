function time = getTime()
%getTime  Returns the current simulation time in s.
%   time = getTime() Returns the current simulation time in s.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
time = traci.simulation.getUniversal(constants.VAR_TIME);
