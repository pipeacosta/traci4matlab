function endingTeleportNumber = getEndingTeleportNumber()
%getEndingTeleportNumber Get the number teleported vehicles.
%   endingTeleportNumber = getEndingTeleportNumber() Returns the number of 
%   vehicles which ended to be teleported in this time step.  

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
endingTeleportNumber = traci.simulation.getUniversal(constants.VAR_TELEPORT_ENDING_VEHICLES_NUMBER);