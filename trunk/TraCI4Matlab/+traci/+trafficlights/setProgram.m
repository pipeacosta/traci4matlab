function setProgram(tlsID, programID)
%setProgram
%   setProgram(TLSID,PROGRAMID)Sets the id of the current program.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
traci.sendStringCmd(constants.CMD_SET_TL_VARIABLE,...
    constants.TL_PROGRAM, tlsID, programID);