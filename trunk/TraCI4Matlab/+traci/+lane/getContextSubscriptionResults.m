function ContextSubscriptionResults = getContextSubscriptionResults(laneID)
%getContextSubscriptionResults Get the context subscription results for the
%   last time step.
%   contextSubscriptionResults = getContextSubscriptionResults(LANEID) 
%   Returns the context subscription results for the last time step and the
%   given lane. If no lane id is given, all subscription results are 
%   returned in a containers.Map data struccure. If the lane id is unknown 
%   or the subscription did for any reason return no data, 'None' is 
%   returned.
%   It is not possible to retrieve older subscription results than the ones
%   from the last time step.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

global laneSubscriptionResults
if isempty(laneSubscriptionResults)
    throw(MException('traci:FatalTraCIError',...
        'You have to subscribe to the variable'));
end
if nargin < 1
    laneID=None;
end
ContextSubscriptionResults = laneSubscriptionResults.getContext(laneID);