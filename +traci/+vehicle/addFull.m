function addFull(vehID, routeID, varargin)
%add Add a vehicle to the SUMO network
%   add(VEHID,ROUTEID,VARARGIN) Add a new vehicle
%   (new style with all possible parameters)

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Christian Portilla, Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: addFull.m 48 2018-12-26 15:35:20Z afacostag $


import traci.constants
global message

p = inputParser;
p.FunctionName = 'vehicle.addFull';
p.addRequired('vehID',@ischar)
p.addRequired('routeID',@ischar)
p.addParameter('typeID', 'DEFAULT_VEHTYPE', @ischar)
p.addParameter('depart', [], @isnumeric)   
p.addParameter('departLane', 'first', @(x) ischar(x) || isnumeric(x))  
p.addParameter('departPos', 'base',  @(x) ischar(x) || isnumeric(x))
p.addParameter('departSpeed', 0, @isnumeric)
p.addParameter('arrivalLane', 'current', @(x) ischar(x) || isnumeric(x)) 
p.addParameter('arrivalPos', 'max', @(x) ischar(x) || isnumeric(x)) 
p.addParameter('arrivalSpeed', 'current', @(x) ischar(x) || isnumeric(x)) 
p.addParameter('fromTaz', '', @ischar) 
p.addParameter('toTaz', '', @ischar) 
p.addParameter('line', '', @ischar) 
p.addParameter('personCapacity', 0, @isnumeric)  
p.addParameter('personNumber', 0, @isnumeric)  
p.parse(vehID, routeID, varargin{:})

vehID = p.Results.vehID;
routeID = p.Results.routeID;
typeID= p.Results.typeID;
depart = p.Results.depart;
departLane=p.Results.departLane;
departPos=p.Results.departPos;
departSpeed=p.Results.departSpeed;
arrivalLane=p.Results.arrivalLane;
arrivalPos=p.Results.arrivalPos;
arrivalSpeed=p.Results.arrivalSpeed;
fromTaz=p.Results.fromTaz;
toTaz=p.Results.toTaz;
line=p.Results.line;
personCapacity=p.Results.personCapacity;
personNumber=p.Results.personNumber;

messageString=[uint8(sscanf(constants.TYPE_COMPOUND,'%x')) traci.packInt32(14)];


if isempty(depart)
    depart = num2str(traci.simulation.getCurrentTime() / 1000);
end

variables={routeID, typeID, depart, departLane, departPos, departSpeed,...
    arrivalLane, arrivalPos, arrivalSpeed, fromTaz, toTaz, line};

for i=1:length(variables)
    
    if ischar(variables{i})
        
        messageString = [messageString uint8(sscanf(constants.TYPE_STRING,'%x')) ...
            traci.packInt32(length(variables{i})) uint8(variables{i})];
    else
        messageString = [messageString uint8(sscanf(constants.TYPE_STRING,'%x')) ...
            traci.packInt32(length(variables{i})) uint8(num2str(variables{i}))];
    end
    
end

messageString = [messageString uint8(sscanf(constants.TYPE_INTEGER,'%x')) ...
    traci.packInt32(personCapacity)];

messageString = [messageString uint8(sscanf(constants.TYPE_INTEGER,'%x')) ...
    traci.packInt32(personNumber)];


traci.beginMessage(constants.CMD_SET_VEHICLE_VARIABLE, constants.ADD_FULL, vehID, length(messageString));
message.string = [message.string messageString];
traci.sendExact();

