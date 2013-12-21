function shapeClass = getShapeClass(typeID)
%getShapeClass
%   shapeClass = getShapeClass(TYPEID) Returns the shape class of vehicles 
%   of this type. 

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

import traci.constants
shapeClass = traci.vehicletype.getUniversal(constants.VAR_SHAPECLASS, typeID);