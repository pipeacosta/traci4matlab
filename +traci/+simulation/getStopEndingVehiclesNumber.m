function stopEndingNumber = getStopEndingVehiclesNumber()
%getStopEndingVehiclesNumber
%   stopEndingNumber = getStopEndingVehiclesNumber()

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
stopEndingNumber = traci.simulation.getUniversal(constants.VAR_STOP_ENDING_VEHICLES_NUMBER);
