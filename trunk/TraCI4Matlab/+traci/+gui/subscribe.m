function subscribe(viewID, varargin) 
%subscribe Subscribe to view variable.
%   subscribe(VIEWID) Subscribe to the VAR_VIEW_OFFSET value for the 
%   maximum allowed interval.
%   subscribe(VIEWID,VARIDS) Subscribe to the values given in the cell 
%   array of strings VARIDS for the maximum allowed interval.
%   subscribe(...,BEGIN) Subscribe from the time BEGIN to the maximum 
%   allowed end time.
%   subscribe(...,END) Subscribe for the time interval defined by BEGIN and 
%   END.
%   A call to this function clears all previous subscription results.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

global guiSubscriptionResults
import traci.constants

% Parse the input
p = inputParser;
p.FunctionName = 'gui.subscribe';
p.addRequired('viewID',@ischar)
p.addOptional('varIDs', {constants.VAR_VIEW_OFFSET}, @iscell)
p.addOptional('subscriptionBegin', 0, @(x)isnumeric(x) && length(x)==1)
p.addOptional('subscriptionEnd', 2^31-1, @(x)isnumeric(x) && length(x)==1)
p.parse(viewID, varargin{:})
viewID = p.Results.viewID;
varIDs = p.Results.varIDs;
subscriptionBegin = p.Results.subscriptionBegin;
subscriptionEnd = p.Results.subscriptionEnd;

guiSubscriptionResults = traci.SubscriptionResults(traci.RETURN_VALUE_FUNC.gui);
guiSubscriptionResults.reset()
traci.subscribe(constants.CMD_SUBSCRIBE_GUI_VARIABLE,...
    subscriptionBegin, subscriptionEnd, viewID, varIDs)