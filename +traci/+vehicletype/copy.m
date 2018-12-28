function copy(origTypeID, newTypeID)
%copy Duplicates the vType with ID origTypeID.
%   copy(ORIGTYPEID,NEWTYPEID) Duplicates the vType with ID origTypeID. The
%   newly created vType is assigned the ID newTypeID.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
traci.sendStringCmd(constants.CMD_SET_VEHICLETYPE_VARIABLE, constants.COPY,...
    origTypeID, newTypeID)
