function electricityConsupmtion = getElectricityConsumption(laneID)
%getElectricityConsumption Returns the electricity consumption in mW for
%   the last time step.
%   electricityConsupmtion = getElectricityConsumption(LANEID) Returns
%   the electricity consumption in mW of the given lane for the last time
%   step.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants

electricityConsupmtion = traci.lane.getUniversal(constants.VAR_ELECTRICITYCONSUMPTION, laneID);