function actionStepLength = getActionStepLength(typeID)
%getActionStepLength Action step length.
%   actionStepLength = getActionStepLength(TYPEID) Returns the action step
%   length for vehicles of this type.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
actionStepLength = traci.vehicletype.getUniversal(constants.VAR_ACTIONSTEPLENGTH, typeID);