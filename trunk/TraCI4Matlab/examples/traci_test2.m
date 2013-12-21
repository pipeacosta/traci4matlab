%% TRACI TEST 2
%   this m-file shows how to use Traci4Matlab.
%   this example is generated based on the SUMO traci tutorial, see
%   http://sumo-sim.org/userdoc/Tutorials/TraCI4Traffic_Lights.html. If you
%   want to test a TraCI command, just uncomment it. The commands are
%   organized by SUMO object type, some of them need to be in the main loop
%   of the script.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id$

clear all
close all
clc

%% MAIN
% The scenario consists of a single intersection controlled by a traffic light
% whose phases are changed if vehicles pass through an induction loop.

% Initialize SUMO from the system. note that it is initialized in graphical
% interface mode. The windows path have to be configured properly to
% recognize the sumo command. In this case, the 0.19.0 version of SUMO is 
% used. The SUMO configuration file must include the --remote-port option 
% set to 8813 to start sumo as a server. You have to modify the path to the
% SUMO configuration file according to your installation.
!sumo-gui -c C:\sumo-0.19.0\docs\tutorial\traci_tls\data\cross.sumocfg &

import traci.constants

% Initialize TraCI
traci.init();

% Define the traffic light phases in a sumo-readable way
NSGREEN = 'GrGr';
NSYELLOW = 'yryr';
WEGREEN = 'rGrG';
WEYELLOW = 'ryry';

% Define the traffic light program. The duration of the phases is based on
% the time required for a car to cross the traffic light from north to
% south
PROGRAM = {WEYELLOW,WEYELLOW,WEYELLOW,NSGREEN,NSGREEN,NSGREEN,NSGREEN,NSGREEN,NSGREEN,NSGREEN,NSGREEN,NSYELLOW,NSYELLOW,WEGREEN};

programPointer = length(PROGRAM);
steps = zeros(1,800);


%% GETIDLIST COMMANDS

% edges = traci.edge.getIDList();
% fprintf('IDs of the edges in the simulation:\n')
% for i=1:length(edges)
%     fprintf('%s\n',edges{i});
% end
% views = traci.gui.getIDList();
% fprintf('IDs of the views in the simulacion:\n')
% for i=1:length(views)
%     fprintf('%s\n',views{i});
% end
% inductionloops = traci.inductionloop.getIDList();
% fprintf('IDs of the induction loops in the simulation:\n')
% for i=1:length(inductionloops)
%     fprintf('%s\n',inductionloops{i});
% end
% junctions = traci.junction.getIDList();
% fprintf('IDs of the junctions in the simulation:\n')
% for i=1:length(junctions)
%     fprintf('%s\n',junctions{i});
% end
% lanes = traci.lane.getIDList();
% fprintf('IDs of the lanes in the simulation:\n')
% for i=1:length(lanes)
%     fprintf('%s\n',lanes{i});
% end
% detectors = traci.multientryexit.getIDList();
% fprintf('IDs of the multi-entry/multi-exit detectors in the simulation:\n')
% for i=1:length(detectors)
%     fprintf('%s\n',detectors{i});
% end
% polygons = traci.polygon.getIDList();
% fprintf('IDs of te polygons in the simulation:\n')
% for i=1:length(polygons)
%     fprintf('%s\n',polygons{i});
% end
% routes = traci.route.getIDList();
% fprintf('IDs of the routes in the simulation:\n')
% for i=1:length(routes)
%     fprintf('%s\n',routes{i});
% end
% trafficlights = traci.trafficlights.getIDList();
% fprintf('IDs of the traffic lights in the simulation:\n')
% for i=1:length(trafficlights)
%     fprintf('%s\n',trafficlights{i});
% end
% vehicletypes = traci.vehicletype.getIDList();
% fprintf('IDs of the vehicle types in the simulation:\n')
% for i=1:length(vehicletypes)
%     fprintf('%s\n',vehicletypes{i});
% end

% THE GETIDLIST COMMAND FOR POIS AND POLYGONS IS TESTED AFTER ADDING THOSE
% OBJECTS TO THE SIMULATION
%
% THE GETIDLIST COMMAND FOR VEHICLES IS PERFOMED ONCE THE VEHICLES ARE
% LOADED IN THE NETWORK, IN THE MAIN LOOP


%% SUBSCIBE COMMANDS

% traci.edge.subscribe('1i');
% traci.gui.subscribe('View #0');
traci.inductionloop.subscribe('0');
% traci.junction.subscribe('0');
% traci.lane.subscribe('1i_0');
% traci.multientryexit.subscribe('e3_0_1i');
% traci.route.subscribe('down');
% traci.simulation.subscribe();
% traci.trafficlights.subscribe('0',{constants.TL_RED_YELLOW_GREEN_STATE});
% tlsCurrentPhaseHandle = traci.trafficlights.getSubscriptionResults('0');
% tlsCurrentPhase = tlsCurrentPhaseHandle(constants.TL_RED_YELLOW_GREEN_STATE);
% fprintf('Fase del semaforo: %s\n', tlsCurrentPhase)
% traci.vehicle.subscribe('5');
% traci.vehicletype.subscribe('typeWE');
% maxSpeedWEHandle = traci.vehicletype.getSubscriptionResults('typeWE');
% maxSpeedWE = maxSpeedWEHandle(constants.VAR_MAXSPEED);

%% POI AND POLYGON COMMANDS

% traci.poi.add('mypoi', 550, 550, [255 255 0 0], '', 1);
% pois = traci.poi.getIDList();
% fprintf('IDs of the pois in the simulation:\n')
% for i=1:length(pois)
%     fprintf('%s\n',pois{i});
% end
% traci.poi.subscribe('mypoi');
% poiposition = traci.poi.getPosition('mypoi')
% poiColor = traci.poi.getColor('mypoi')
% traci.poi.setType('mypoi', 'mypoitype');
% poitype = traci.poi.getType('mypoi')
% traci.poi.setPosition('mypoi', 550, 580);
% poiposition = traci.poi.getPosition('mypoi')
% traci.poi.setColor('mypoi', [255 255 255 0]);
% traci.poi.remove('mypoi', 1);

% traci.polygon.add('mypolygon', {[440,440],[440,450],[450,440],[450,450]},...
%     [0 255 255 0], false, '', 1);
% traci.polygon.add('my2ndpolygon', {[400,400],[400,420],[430,420],[430,400],[400,400]},...
%     [255 0 0 0], true, '', 1);
% polygons = traci.polygon.getIDList();
% fprintf('IDs of the polygons in the simulation:\n')
% for i=1:length(polygons)
%     fprintf('%s\n',polygons{i});
% end
% traci.polygon.subscribe('mypolygon');
% polygonColor = traci.polygon.getColor('mypolygon')
% traci.polygon.setType('mypolygon', 'mypolygontype');
% polygontype = traci.polygon.getType('mypolygon')
% traci.polygon.setShape('mypolygon', {[400,400],[400,420],[430,420],[430,400],[400,400]});
% polygonshape = traci.polygon.getShape('mypolygon')
% traci.polygon.setColor('mypolygon', [255 255 255 0]);
% traci.polygon.remove('mypolygon', 1);


%% CONTEXT SUBSCRIPTIONS
% It's worth noting that, accordong to
% http://sumo-sim.org/userdoc/TraCI/Object_Context_Subscription.html, only
% the following SUMO objects are supported: inductive loops, lanes,
% vehicles, points-of-interest, polygons, junctions, edges.

% traci.edge.subscribeContext('4i',constants.CMD_GET_LANE_VARIABLE,50);
% traci.inductionloop.subscribeContext('0',constants.CMD_GET_LANE_VARIABLE,20);
% traci.junction.subscribeContext('0',constants.CMD_GET_VEHICLE_VARIABLE,20);
% traci.lane.subscribeContext('4i_0',constants.CMD_GET_LANE_VARIABLE,50);
% traci.poi.subscribeContext('mypoi',constants.CMD_GET_VEHICLE_VARIABLE,50);
% traci.polygon.subscribeContext('mypolygon',constants.CMD_GET_POLYGON_VARIABLE,30);
% traci.vehicle.subscribeContext('5',constants.CMD_GET_VEHICLE_VARIABLE,30);

WElaneoccupancy = zeros(1,800);
NSlaneoccupancy = zeros(1,800);

% getminexectednumber returns the number of expected vehicles to leave the
% network, which will be the condition to execute the simulation.
% MinExpectedNumber = traci.simulation.getMinExpectedNumber();

%% GUI SET COMMANDS
traci.gui.setZoom('View #0', 1000);
traci.gui.setOffset('View #0',  523.7211,  525.9342);
traci.gui.setSchema('View #0',  'real world');
% traci.gui.setBoundary('View #0', 386.95, 485.88, 651.64, 589.01);
traci.gui.trackVehicle('View #0', '10');

%% LANE SET COMMANDS
% traci.lane.setAllowed('1i_0',{'typeWE'});
% traci.lane.setDisallowed('1i_0',{'typeWE'});
% traci.lane.setMaxSpeed('1i_0',5);
% traci.lane.setLength('1i_0',450);

%% ROUTE COMMANDS
% traci.route.add('up',{'53o','3i','4o','54i'});
% routeUpEdges = traci.route.getEdges('up')

%% VEHICLE SET COMMANDS
% traci.vehicle.setMaxSpeed('5',5);
% traci.vehicle.setStop('5','1i',50,0,40000);
% traci.vehicle.changeLane('5',0,40000);
% traci.vehicle.slowDown('5',1,180000);
% traci.vehicle.changeTarget('5','2o');
% traci.vehicle.setRouteID('5','down');
% traci.vehicle.setRoute('5',{'51o' '1i' '2o'});
% traci.vehicle.setAdaptedTraveltime('5',10000,50000,'1i',15000);
% traci.vehicle.setEffort('5',10000,50000,'1i',12.454);
% traci.vehicle.rerouteTraveltime('5');
% traci.vehicle.rerouteEffort('5');
% traci.vehicle.setSignals('5',2);
traci.vehicle.setSpeed('10',5);
traci.vehicle.setColor('10',[0 0 255 0]);
traci.vehicle.setLength('10',10);
% traci.vehicle.setVehicleClass('5','unknown');
% traci.vehicle.setSpeedFactor('5',0.6);
% traci.vehicle.setSpeedDeviation('5',0.02);
% traci.vehicle.setEmissionClass('5','unknown');
% traci.vehicle.setWidth('5',3);
traci.vehicle.setMinGap('10',10);
% traci.vehicle.setShapeClass('5','');
traci.vehicle.setAccel('10',2);
traci.vehicle.setDecel('10',2);
traci.vehicle.setImperfection('10',1);
traci.vehicle.setTau('10',1);
% traci.vehicle.add('myvehicle','down');
% traci.vehicle.remove('myvehicle');
% traci.gui.trackVehicle('View #0', 'myvehicle');
% traci.vehicle.moveToVTD('10','2o',0,608,509);

%% VEHICLE TYPE COMMANDS

% typeLength = traci.vehicletype.getLength('typeWE')
% typeMaxSpeed = traci.vehicletype.getMaxSpeed('typeWE')
% typeSpeedFactor = traci.vehicletype.getSpeedFactor('typeWE')
% typeSpeedDeviation = traci.vehicletype.getSpeedDeviation('typeWE')
% typeAccel = traci.vehicletype.getAccel('typeWE')
% typeDecel = traci.vehicletype.getDecel('typeWE')
% typeImperfection = traci.vehicletype.getImperfection('typeWE')
% typeTau = traci.vehicletype.getTau('typeWE')
% typeClass = traci.vehicletype.getVehicleClass('typeWE')
% typeEmissionClass = traci.vehicletype.getEmissionClass('typeWE')
% typeShapeClass = traci.vehicletype.getShapeClass('typeWE')
% typeMinGap = traci.vehicletype.getShapeClass('typeWE')
% typeWidth = traci.vehicletype.getWidth('typeWE')
% typeColor = traci.vehicletype.getColor('typeWE

% traci.vehicletype.setLength('typeWE',8);
% traci.vehicletype.setMaxSpeed('typeWE',10);
% traci.vehicletype.setVehicleClass('typeWE','passenger');
% traci.vehicletype.setSpeedFactor('typeWE',0.8);
% traci.vehicletype.setSpeedDeviation('typeWE',0.2);
% traci.vehicletype.setEmissionClass('typeWE','unknown');
% traci.vehicletype.setWidth('typeWE',1);
% traci.vehicletype.setMinGap('typeWE',1);
% traci.vehicletype.setShapeClass('typeWE','');
% traci.vehicletype.setAccel('typeWE',5);
% traci.vehicletype.setDecel('typeWE',3);
% traci.vehicletype.setImperfection('typeWE',0.6);
% traci.vehicletype.setTau('typeWE',0.1);
% traci.vehicletype.setColor('typeWE',[255 255 255 0]);

for i=1:length(steps)
    
    % Perform a simulation step (one second)
    traci.simulationStep();
    programPointer = min(programPointer+1, length(PROGRAM));
    
    % Get the number of vehicles that passed through the induction loop in
    % the last simulation step
    % no = traci.inductionloop.getLastStepVehicleNumber('0');
    
    % SHOW THE VEHICLES IDS INSIDE THE NETWORK
    % vehicles = traci.vehicle.getIDList();
    % fprintf('IDs of the vehicles in the simulation\n')
    % for j=1:length(vehicles)
    %     fprintf('%s\n',vehicles{j});
    % end
    
    % Subscribe to the vehicle with ID '5' when it is loaded in the
    % network
    % if ismember('5',vehicles)
    %     vehicle5Handle = traci.vehicle.getSubscriptionResults('5');
    %     vehicle5 = {vehicle5Handle(constants.VAR_ROAD_ID) vehicle5Handle(constants.VAR_LANEPOSITION)};
    % end
    
    %% GETSUBSCRIPTIONRESULTS COMMANDS
    
    % occupancyEdge1Handle = traci.edge.getSubscriptionResults('1i');
    % WElaneoccupancy(i) = occupancyEdge1Handle(constants.LAST_STEP_VEHICLE_NUMBER);
    % offsethandle = traci.gui.getSubscriptionResults('View #0');
    % offset = offsethandle(traci.VAR_VIEW_OFFSET);
    indloopSubsResults = traci.inductionloop.getSubscriptionResults('0');
    no = indloopSubsResults(constants.LAST_STEP_VEHICLE_NUMBER);
    % junctionPositionHandle = traci.junction.getSubscriptionResults('0');
    % junctionPosition = junctionPositionHandle(constants.VAR_POSITION);
    % occupancyLane1Handle = traci.lane.getSubscriptionResults('1i_0');
    % WElaneoccupancy(i) = occupancyLane1Handle(constants.LAST_STEP_VEHICLE_NUMBER);
    % occupancyLane1Handle = traci.multientryexit.getSubscriptionResults('e3_0_1i');
    % WElaneoccupancy(i) = occupancyLane1Handle(constants.LAST_STEP_VEHICLE_NUMBER);
    % poiPositionHandle = traci.poi.getSubscriptionResults('mypoi');
    % poiPosition = poiPositionHandle(constants.VAR_POSITION);
    % polygonPositionHandle = traci.polygon.getSubscriptionResults('mypolygon');
    % polygonPosition = polygonPositionHandle(constants.VAR_SHAPE);
    % routeListHandle = traci.route.getSubscriptionResults('down');
    % routeList = routeListHandle(constants.ID_LIST);
    % departedVehicleIDsHandle = traci.simulation.getSubscriptionResults();
    % departedVehicleIDs = departedVehicleIDsHandle(constants.VAR_DEPARTED_VEHICLES_IDS);
    % tlsCurrentPhaseHandle = traci.trafficlights.getSubscriptionResults('0');
    % tlsCurrentPhase = tlsCurrentPhaseHandle(constants.TL_CURRENT_PHASE);
    
    %% GET CONTEXT SUBSCRIPTION RESULTS COMMANDS
    
    % edge4i0ContextResults = traci.edge.getContextSubscriptionResults('4i');
    % occupancy4i0Handle1 = edge4i0ContextResults('4i_0');
    % occupancy4i0 = occupancy4i0Handle1(constants.LAST_STEP_VEHICLE_NUMBER);
    % fprintf('%d\n',occupancy4i0);
    
    % loop0ContextResults = traci.inductionloop.getContextSubscriptionResults('0');
    % priorityVehiclesPassedHandle = loop0ContextResults('4i_0');
    % priorityVehiclesPassed = priorityVehiclesPassedHandle(constants.LAST_STEP_VEHICLE_NUMBER);
    % fprintf('%d\n',priorityVehiclesPassed);
    
    % junctionContextResults = traci.junction.getContextSubscriptionResults('0');
    
    % laneContextSubscriptionResults = traci.lane.getContextSubscriptionResults('4i_0');
    % poiContextSubscriptionResults = traci.poi.getContextSubscriptionResults('mypoi');
    % polygonContextSubscriptionResults = traci.polygon.getContextSubscriptionResults('mypolygon');
    % vehicleContextSubscriptionResults = traci.vehicle.getContextSubscriptionResults('5');
    
    %% EDGE COMMANDS
    
    % edgeIDCount = traci.edge.getIDCount();
    % fprintf('Number of edges in the simulation: %d\n',edgeIDCount);
    
    % travelTime = traci.edge.getAdaptedTraveltime('1i',10);
    % fprintf('Travel time in 10 seconfs in the edge 1i: %d\n',travelTime);
    
    % effort = traci.edge.getEffort('1i',10);
    % fprintf('Travel effort in 10 seconds in the edge 1i: %d\n',effort);
    
    % CO2EmissionEdge1i = traci.edge.getCO2Emission('1i');
    % fprintf('CO2 emission in the edge 1i: %d\n',CO2EmissionEdge1i);
    
    % COEmissionEdge1i = traci.edge.getCOEmission('1i');
    % fprintf('CO emission in the edge 1i: %d\n',COEmissionEdge1i);
    
    % HCEmissionEdge1i = traci.edge.getHCEmission('1i');
    % fprintf('HC emission in the edge 1i: %d\n',HCEmissionEdge1i);
    
    % PMxEmissionEdge1i = traci.edge.getPmxEmission('1i');
    % fprintf('PMx emission in the edge 1i: %d\n',PMxEmissionEdge1i);
    
    % NOxEmissionEdge1i = traci.edge.getNOxEmission('1i');
    % fprintf('NOx emission in the edge 1i: %d\n',NOxEmissionEdge1i);
    
    % fuelConsumptionEdge1i = traci.edge.getFuelConsumptionEmission('1i');
    % fprintf('Fuel consumption in the edge 1i: %d\n',fuelConsumptionEdge1i);
    
    % noiseEmissionEdge1i = traci.edge.getNoiseEmission('1i');
    % fprintf('Noise emission in the edge 1i: %d\n',noiseEmissionEdge1i);
    
    % vehicleMeanSpeedEdge1i = traci.edge.getLastStepMeanSpeed('1i');
    % fprintf('Average speed in the edge 1i: %d\n',vehicleMeanSpeedEdge1i);
    
    % vehicleOccupancyEdge1i = traci.edge.getLastStepOccupancy('1i');
    % fprintf('Occupancy in the edge 1i: %d\n',vehicleOccupancyEdge1i);
    
    % vehicleMeanLengthEdge1i = traci.edge.getLastStepLength('1i');
    % fprintf('Average length in the edge 1i: %d\n',vehicleMeanLengthEdge1i);
    
    % vehicleTravelTimeEdge1i = traci.edge.getTraveltime('1i');
    % fprintf('Average time of the vehicles in the edge 1i: %d\n',vehicleTravelTimeEdge1i);
    
    % vehicleHaltingEdge1i = traci.edge.getLastStepHaltingNumber('1i');
    % fprintf('Stopped vehicles in the edge 1i: %d\n',vehicleHaltingEdge1i);
    
    % vehicleIDsEdge1i = traci.edge.getLastStepVehicleIDs('1i');
    % fprintf('IDs of the vehicles in the edge 1i: \n');
    % disp(vehicleIDsEdge1i)
    
    % traci.edge.adaptTraveltime('1i',15);
    
    % traci.edge.setEffort('1i',1.343);
    
    % traci.edge.setMaxSpeed('1i',5);
    
    %% GUI GET COMMANDS
    
    % guizoom = traci.gui.getZoom()
    % offset = traci.gui.getOffset()
    % schema = traci.gui.getSchema()
    % boundary = traci.gui.getBoundary()
    
    %% INDUCTION LOOP COMMANDS
    
    % loop0position = traci.inductionloop.getPosition('0');
    % loop0LaneID = traci.inductionloop.getLaneID('0')
    % loop0MeanSpeed = traci.inductionloop.getLastStepMeanSpeed('0')
    % loop0VehicleIDs = traci.inductionloop.getLastStepVehicleIDs('0')
    % loop0Occupancy = traci.inductionloop.getLastStepOccupancy('0')
    % loop0MeanLength = traci.inductionloop.getLastStepMeanLength('0')
    % loop0TimeSinceDetection = traci.inductionloop.getTimeSinceDetection('0')
    
    %% JUNCTION COMMANDS
    
    % junctionPosition = traci.junction.getPosition('0');
    
    %% LANE GET COMMANDS
    
    % lane1i0Length = traci.lane.getLength('1i_0');
    % lane1i0MaxSpeed = traci.lane.getMaxSpeed('1i_0');
    % lane1i0Width = traci.lane.getWidth('1i_0');
    % lane1i0AllowedVehicles = traci.lane.getAllowed('1i_0');
    % lane1i0DisallowedVehicles = traci.lane.getDisallowed('1i_0');
    % lane1i0LinkNumber = traci.lane.getLinkNumber('1i_0');
    % lane1i0Links = traci.lane.getLinks('1i_0');
    % lane1i0Shape = traci.lane.getShape('1i_0');
    % lane1i0EdgeID = traci.lane.getEdgeID('1i_0');
    % lane1i0CO2Emmision = traci.lane.getCO2Emission('1i_0')
    % lane1i0COEmmision = traci.lane.getCOEmission('1i_0')
    % lane1i0HCEmmision = traci.lane.getHCEmission('1i_0')
    % lane1i0PMxEmmision = traci.lane.getPMxEmission('1i_0')
    % lane1i0NOxEmmision = traci.lane.getNOxEmission('1i_0')
    % lane1i0FuelConsumption = traci.lane.getFuelConsumption('1i_0')
    % lane1i0NoiseEmission = traci.lane.getNoiseEmission('1i_0')
    % lane1i0MeanSpeed = traci.lane.getLastStepMeanSpeed('1i_0')
    % lane1i0Occupancy = traci.lane.getLastStepOccupancy('1i_0')
    % lane1i0MeanVehicleLength = traci.lane.getLastStepLength('1i_0')
    % lane1i0TravelTime = traci.lane.getTraveltime('1i_0')
    % lane1i0HalringNumber = traci.lane.getLastStepHaltingNumber('1i_0')
    % lane1i0VehicleIDs = traci.lane.getLastStepVehicleIDs('1i_0')
    
    %% MULTIENTRY=EXIT COMMANDS
    
    % muiVehicleNumber = traci.multientryexit.getLastStepVehicleNumber('e3_0_1i')
    % muiMeanSpeed = traci.multientryexit.getLastStepMeanSpeed('e3_0_1i')
    % muiVehIDs = traci.multientryexit.getLastStepVehicleIDs('e3_0_1i')
    % muiHaltingVehicles = traci.multientryexit.getLastStepHaltingNumber('e3_0_1i')
    
    %% SIMULATION COMMANDS
    
    % clc
    % currentTime = traci.simulation.getCurrentTime()
    % loadedNumber = traci.simulation.getLoadedNumber()
    % loadedIDList = traci.simulation.getLoadedIDList();
    % departedNumber = traci.simulation.getDepartedNumber()
    % departedIDList = traci.simulation.getDepartedIDList();
    % if ismember('5',departedIDList)
    %     traci.vehicle.moveTo('5','1i_0',20);
    % end
    % arrivedNumber = traci.simulation.getArrivedNumber()
    % arrivedIDList = traci.simulation.getArrivedIDList()
    % startingTeleportNumber = traci.simulation.getStartingTeleportNumber()
    % startingTeleportIDList = traci.simulation.getStartingTeleportIDList()
    % endingTeleportNumber = traci.simulation.getEndingTeleportNumber()
    % deltaT = traci.simulation.getDeltaT()
    % netBoundary = traci.simulation.getNetBoundary()
    % [x y] = traci.simulation.convert2D('1i',10)
    % [roadID pos laneID] = traci.simulation.convertRoad(20, 508.35)
    % [longitude latitude] = traci.simulation.convertGeo(20, 508.35)
    % distance2D = traci.simulation.getDistance2D(20, 508.35, 30, 508.35)
    % distanceRoad = traci.simulation.getDistanceRoad('1i', 10, '1i', 20)
    
    %% TRAFFIC LIGHTS COMMANDS
    
    % tlsRYGState = traci.trafficlights.getRedYellowGreenState('0')
    % tlsRYGDefinition = traci.trafficlights.getCompleteRedYellowGreenDefinition('0')
    % tlscontrolledLanes = traci.trafficlights.getControlledLanes('0')
    % tlscontrolledLinks = traci.trafficlights.getControlledLinks('0')
    % tlsProgram = traci.trafficlights.getProgram('0')
    % tlsPhase = traci.trafficlights.getPhase('0')
    % traci.trafficlights.setPhase('0',0);
    % traci.trafficlights.setProgram('0','0');
    % traci.trafficlights.setPhaseDuration('0',5);
    myRYGDefinition = traci.trafficlights.Logic('0',0,0,0,...
        {traci.trafficlights.Phase(31000,31000,31000,'GrGr'),...
        traci.trafficlights.Phase(31000,31000,31000,'rGrG'),...
        traci.trafficlights.Phase(6000,6000,6000,'ryry')});
    traci.trafficlights.setCompleteRedYellowGreenDefinition('0',myRYGDefinition);
    % tlsRYGDefinition = traci.trafficlights.getCompleteRedYellowGreenDefinition('0');
    
    %% VEHICLE GET COMMANDS
    
    % vehSpeed = traci.vehicle.getSpeed('5')
    % vehSpeedWOTraci = traci.vehicle.getSpeedWithoutTraCI('5')
    % vehPosition = traci.vehicle.getPosition('5')
    % vehAngle = traci.vehicle.getAngle('5')
    % vehRoadID = traci.vehicle.getRoadID('5')
    % vehLaneID = traci.vehicle.getLaneID('5')
    % vehLaneIndex = traci.vehicle.getLaneIndex('5')
    % vehTypeID = traci.vehicle.getTypeID('5')
    % vehRouteID = traci.vehicle.getRouteID('5')
    % vehRoute = traci.vehicle.getRoute('5')
    % vehLanePos = traci.vehicle.getLanePosition('5')
    % vehColor = traci.vehicle.getColor('5')
    % vehCO2Emission = traci.vehicle.getCO2Emission('5')
    % vehCOEmission = traci.vehicle.getCOEmission('5')
    % vehPmxEmission = traci.vehicle.getPMxEmission('5')
    % vehNOxEmission = traci.vehicle.getNOxEmission('5')
    % vehFuelConsumption = traci.vehicle.getFuelConsumption('5')
    % vehAdaptedTraveltime = traci.vehicle.getAdaptedTraveltime('5',10,'1i')
    % vehEffort = traci.vehicle.getEffort('5',10,'1i')
    % vehValidRoute = traci.vehicle.isRouteValid('5')
    % vehSignals = traci.vehicle.getSignals('5')
    % vehMaxSpeed = traci.vehicle.getMaxSpeed('5')
    % vehClass = traci.vehicle.getVehicleClass('5')
    % vehSpeedFactor = traci.vehicle.getSpeedFactor('5')
    % vehSpeedDeviation = traci.vehicle.getSpeedDeviation('5')
    % vehEmissionClass = traci.vehicle.getEmissionClass('5')
    % vehWidth = traci.vehicle.getWidth('5')
    % vehMinGap = traci.vehicle.getMinGap('5')
    % vehShapeClass = traci.vehicle.getShapeClass('5')
    % vehAccel = traci.vehicle.getAccel('5')
    % vehDecel = traci.vehicle.getDecel('5')
    % vehImperfection = traci.vehicle.getImperfection('5')
    % vehTau = traci.vehicle.getTau('5')
    % vehBestLanes = traci.vehicle.getBestLanes('5')
    % vehDrivingDistance = traci.vehicle.getDrivingDistance('5','2o',30)
    % vehDrivingDistance2D = traci.vehicle.getDrivingDistance2D('5',620,510)
      
    
    % Change the phase of the traffic light if a vehicle passed through the
    % induction loop
    if no > 0
        % traci.gui.screenshot('View #0','passedvehicle.bmp')
        % loop0VehicleData = traci.inductionloop.getVehicleData('0')
        if programPointer == length(PROGRAM)-1
            programPointer = 1;
        else
            programPointer = 4;
        end
    end
    traci.trafficlights.setRedYellowGreenState('0', PROGRAM{programPointer});
    
    % AN ADDITIONAL EVIDENCE OF THE TRAFFIC LIGHTS SUBSCRIPTION, DON'T
    % FORGET TO SET THE SUBSCRIPTION BEFORE EXECUTING IT.
    % if no > 0
    %     tlsCurrentPhaseHandle = traci.trafficlights.getSubscriptionResults('0');
    %     tlsCurrentPhase = tlsCurrentPhaseHandle(constants.TL_RED_YELLOW_GREEN_STATE);
    %     fprintf('La fase del semaforo cambio a: %s\n', tlsCurrentPhase)
    % end
    
    % AN ADDITIONAL EVIDENCE OF THE LANE SUBSCRIPTIONS, ENABLE THE PLOTTING
    % FUNCTIONS BELOW TO VISUALIZE IT.
    WElaneoccupancy(i) = traci.lane.getLastStepVehicleNumber('1i_0')+...
        traci.lane.getLastStepVehicleNumber('2i_0');
    NSlaneoccupancy(i) = traci.lane.getLastStepVehicleNumber('3i_0')+...
        traci.lane.getLastStepVehicleNumber('4i_0');
    
    steps(i) = i;
    MinExpectedNumber = traci.simulation.getMinExpectedNumber();
end
traci.close()
plot(steps, WElaneoccupancy)
hold;
plot(steps, NSlaneoccupancy, 'r')
legend('WE lane occupancy', 'NS lane occupancy')
title('Lane occupancy vs time')
xlabel('t (seconds)')
ylabel('number of vehicles')