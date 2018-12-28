function stopStartingIDList = getStopStartingVehiclesIDList()
%getStopStartingVehiclesIDList
%   stopStartingIDList = getStopStartingVehiclesIDList()

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
stopStartingIDList = traci.simulation.getUniversal(constants.VAR_STOP_STARTING_VEHICLES_IDS);
