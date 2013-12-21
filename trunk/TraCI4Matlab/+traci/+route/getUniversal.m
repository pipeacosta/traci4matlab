function returnedValue = getUniversal(varID, routeID)
%getUniversal An internal function to send the get command and read the 
%variable value.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
global routeSubscriptionResults

if isempty(routeSubscriptionResults)
    returnValueFunc = traci.RETURN_VALUE_FUNC.route;
else
    returnValueFunc = routeSubscriptionResults.valueFunc;
end

% Prepare the outgoing message and read the response. The result variable
% is a traci.Storage object
result = traci.sendReadOneStringCmd(constants.CMD_GET_ROUTE_VARIABLE,varID,routeID);
handleReturValueFunc = str2func(returnValueFunc(varID));

% Use the proper method to read the variable of interest from the result
returnedValue = handleReturValueFunc(result);