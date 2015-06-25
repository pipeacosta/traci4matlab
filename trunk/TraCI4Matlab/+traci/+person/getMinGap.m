function minGap = getMinGap(personID)
%getMinGap Returns the gap to front person.
%   minGap = getMinGap(PERSONID) Returns the offset (gap to front person if 
%   halting) of this person.

%   Copyright 2015 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
minGap = traci.person.getUniversal(constants.VAR_MINGAP, personID);