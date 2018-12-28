function parkingStartingIDList = getParkingStartingVehiclesIDList()
%getParkingStartingVehiclesIDList
%   parkingStartingIDList = getParkingStartingVehiclesIDList()

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
parkingStartingIDList = traci.simulation.getUniversal(constants.VAR_PARKING_STARTING_VEHICLES_IDS);
