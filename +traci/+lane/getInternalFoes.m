function foes = getInternalFoes(laneID)
%getInternalFoes Returns internal lanes that have right of way.
%   foes = getInternalFoes(LANEID) Returns the ids of internal lanes that
%   are in conflict with the given internal lane id.

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

foes = traci.lane.getFoes(laneID, '');