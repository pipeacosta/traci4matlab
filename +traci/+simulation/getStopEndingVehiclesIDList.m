function stopEndingIDList = getStopEndingVehiclesIDList()
%getStopEndingVehiclesIDList
%   stopEndingIDList = getStopEndingVehiclesIDList()

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
stopEndingIDList = traci.simulation.getUniversal(constants.VAR_STOP_ENDING_VEHICLES_IDS);
