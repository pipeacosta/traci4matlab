function arrivedNumber = getArrivedNumber()
%getArrivedNumber Get the number of arrived vehicles.
%   arrivedNumber = getArrivedNumber() Returns the number of vehicles which
%   arrived (have reached their destination and are removed from the road 
%   network) in this time step. 

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getArrivedNumber.m 48 2018-12-26 15:35:20Z afacostag $

import traci.constants
arrivedNumber = traci.simulation.getUniversal(constants.VAR_ARRIVED_VEHICLES_NUMBER);