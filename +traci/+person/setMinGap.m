function setMinGap(personID, minGap)
%setMinGap Sets the minimum Gap for this person.
%   setMinGap(PERSONID) Sets the offset (gap to front person if halting)
%   for this vehicle.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants

traci.sendDoubleCmd(constants.CMD_SET_PERSON_VARIABLE, constants.VAR_MINGAP,...
    personID, minGap);
