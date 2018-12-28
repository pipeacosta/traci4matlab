function parkingStartingNumber = getParkingStartingVehiclesNumber()
%getParkingStartingVehiclesNumber
%   parkingStartingNumber = getParkingStartingVehiclesNumber()

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
parkingStartingNumber = traci.simulation.getUniversal(constants.VAR_PARKING_STARTING_VEHICLES_NUMBER);
