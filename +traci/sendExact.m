function result = sendExact()
%sendExact An internal function to send a message to the SUMO server and
%parse the result.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

global message connections
import traci.constants
% warning('off','instrument:fread:unsuccessfulRead');

% The possible results
RESULTS = containers.Map({'0x00' '0x01' '0xFF'},...
	{'OK' 'Not implemented' 'Error'});

% Length of the command
len = int32(4 + length(message.string));

% Write the message in the tcp socket
fwrite(connections(''),[fliplr(typecast(len,'uint8')) message.string])

% Read the result from the socket
result = traci.recvExact();

if isempty(result)
    fclose(connections(''));
    clear connections('')
    throw(MException('traci:FatalTraciError','Connection closed by SUMO\n'))
end

% Parse the result
for i= 1:length(message.queue)
	prefix = result.read(3);
    strresult = RESULTS(['0x' sprintf('%.2X',prefix(3))]);
	err = result.readString();
	if prefix(3) || ~isempty(err)
        message.string = [];
        message.queue = [];
		throw(MException('traci:FatalTraciError','%s %s %s\n', num2str(prefix), strresult, err));
	elseif prefix(2) ~= message.queue(i)
		throw(MException('traci:FatalTraciError','Received answer 0x%.2X for command 0x%.2x.\n',...
            prefix(2), message.queue(i)));
	elseif prefix(2) == constants.CMD_STOP
		len = result.read(1) - 1;
		result.read(len + 1);
	end
end

% Clear the message contents
message.string = [];
message.queue = [];



