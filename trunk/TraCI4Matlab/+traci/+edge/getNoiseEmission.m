function noiseEmission = getNoiseEmission(edgeID)
%getNoiseEmission Get the noise emission in the edge.
%   noiseEmission = getNoiseEmission(EDGEID) Returns the noise emission in 
%   db for the last time step on the given edge.

%   Copyright 2015 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
noiseEmission = traci.edge.getUniversal(constants.VAR_NOISEEMISSION, edgeID);