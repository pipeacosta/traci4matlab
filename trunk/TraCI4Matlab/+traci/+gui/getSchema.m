function schema = getSchema(viewID)
%getSchema Get the color schema of the view.
%   schema = getSchema(VIEWID) Returns the name of the current coloring 
%   scheme. If no view ID is given, the function return the results for the
%   default view.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
if nargin < 1
    viewID = 'View #0';
end
schema = traci.gui.getUniversal(constants.VAR_VIEW_SCHEMA, viewID);