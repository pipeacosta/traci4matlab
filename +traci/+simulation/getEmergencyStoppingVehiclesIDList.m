function emergencyStoppingIDList = getEmergencyStoppingVehiclesIDList()
%getEmergencyStoppingVehiclesIDList
%   emergencyStoppingIDList = getEmergencyStoppingVehiclesIDList()

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
emergencyStoppingIDList = traci.simulation.getUniversal(constants.VAR_EMERGENCYSTOPPING_VEHICLES_IDS);
