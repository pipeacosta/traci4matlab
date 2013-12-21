function ContextSubscriptionResults = getContextSubscriptionResults(vehID)
%getContextSubscriptionResults Get the context subscription results for the
%   last time step.
%   contextSubscriptionResults = getContextSubscriptionResults(VEHICLEID) 
%   Returns the context subscription results for the last time step and the
%   given vehicle. If no vehicle id is given, all subscription results are 
%   returned in a containers.Map data struccure. If the vehicle id is unknown 
%   or the subscription did for any reason return no data, 'None' is 
%   returned.
%   It is not possible to retrieve older subscription results than the ones
%   from the last time step.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

global vehSubscriptionResults
if isempty(vehSubscriptionResults)
    throw(MException('traci:FatalTraCIError',...
        'You have to subscribe to the variable'));
end
if nargin < 1
    vehID=None;
end
ContextSubscriptionResults = vehSubscriptionResults.getContext(vehID);