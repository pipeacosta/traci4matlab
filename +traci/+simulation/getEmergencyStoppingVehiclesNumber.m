function emergencyStoppingNumber = getEmergencyStoppingVehiclesNumber()
%getEmergencyStoppingVehiclesNumber
%   emergencyStoppingNumber = getEmergencyStoppingVehiclesNumber()

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
emergencyStoppingNumber = traci.simulation.getUniversal(constants.VAR_EMERGENCYSTOPPING_VEHICLES_NUMBER);
