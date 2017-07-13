function personNumber = getPersonNumber(vehID)
%getPersonNumber Get the number of persons in the vehicle.
%   personNumber = getPersonNumber(VEHID) Returns the total number of
%   persons which includes those defined using attribute 'personNumber' as
%   well as <person>-objects which are riding in this vehicle.

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getPersonNumber.m 37 2017-07-07 16:23:05Z afacostag $

import traci.constants
personNumber = traci.vehicle.getUniversal(constants.VAR_PERSON_NUMBER, vehID);

