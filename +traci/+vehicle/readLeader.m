function [vehID, dist] = readLeader(result)

%   Copyright 2016 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: readLeader.m 37 2017-07-07 16:23:05Z afacostag $

result.readInt();
result.read(1);
vehID = result.readString();
result.read(1);
dist = result.readDouble();




