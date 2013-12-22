function result = recvExact()
%recvExact Internal function to receive the response from SUMO server.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

global connections
warning('off','instrument:fread:unsuccessfulRead');

recvlength = [];

% Receive the total length of the response
while length(recvlength) < 1
	t = fread(connections(''),1 - length(recvlength),'int32');
	if isempty(t)
		result = [];
		return
	end
	recvlength = [recvlength t];
end
recvlength = recvlength - 4;

% Receive the response
result = [];
while length(result) < recvlength
	t = fread(connections(''),recvlength-length(result),'uint8');
	if isempty(t)
		result = [];
		return
	end
	result = [result t];
end

% Construct the traci.Storage object containing the result
result = traci.Storage(uint8(result'));