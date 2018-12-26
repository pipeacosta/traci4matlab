function setPhaseDuration(tlsID, phaseDuration)
%setPhaseDuration Set the phase duration traffic light.
%   setPhaseDuration(TLSID,PHASEDURATION) Sets the current phase's duration
%   in miliseconds of the traffic lights with ID TLSID to the given in the 
%   PHASEDURATION parameter.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: setPhaseDuration.m 48 2018-12-26 15:35:20Z afacostag $

import traci.constants
traci.sendIntCmd(constants.CMD_SET_TL_VARIABLE,...
    constants.TL_PHASE_DURATION, tlsID, 1000*phaseDuration);