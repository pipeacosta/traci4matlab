function IDCount = getIDCount()
%IDCount = getIDCount() Get the number of edges in the SUMO network.  

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
IDCount = traci.edge.getUniversal(constants.ID_COUNT, '');