function nextTLS = getNextTLS(vehID)
%getNextTLS Get the upcoming traffic lights of the vehicle.
%   nextTLS = getNextTLS(VEHID)  Return list of upcoming traffic lights
%   [(tlsID, tlsIndex, distance, state), ...] 

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getNextTLS.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
nextTLS = traci.vehicle.getUniversal(constants.VAR_NEXT_TLS, vehID);
