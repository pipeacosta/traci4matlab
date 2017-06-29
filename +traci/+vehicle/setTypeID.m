function setTypeID(vehID, vehTypeID)
%setRouteID Sets the id of the named vehicle type.
%   setRouteID(VEHID,ROUTEID) Sets the id of the vehicle type for the named
%   vehicle.

%   Author: Marcus Müller.

import traci.constants
traci.sendStringCmd(constants.CMD_SET_VEHICLE_VARIABLE, constants.VAR_TYPE, vehID, vehTypeID);
