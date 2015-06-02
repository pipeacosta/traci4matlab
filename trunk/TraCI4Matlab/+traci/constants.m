classdef constants
    %The SUMO hexadecimal constants.
    
    %   Copyright 2014 Universidad Nacional de Colombia,
    %   Politecnico Jaime Isaza Cadavid.
    %   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
	%   $Id$

	properties (Constant = true)
		% ****************************************
		% VERSION
		% ****************************************
		TRACI_VERSION = 9


		% ****************************************
		% COMMANDS
		% ****************************************
		% command: get version
		CMD_GETVERSION = '0x00'

		% command: simulation step
		CMD_SIMSTEP2 = '0x02'

		% command: stop node
		CMD_STOP = '0x12'

		% command: Resume from parking
		CMD_RESUME = '0x19'

		% command: set lane
		CMD_CHANGELANE = '0x13'

		% command: slow down
		CMD_SLOWDOWN = '0x14'

		% command: change target
		CMD_CHANGETARGET = '0x31'

		% command: close sumo
		CMD_CLOSE = '0x7F'


		% command: subscribe induction loop (e1) context
		CMD_SUBSCRIBE_INDUCTIONLOOP_CONTEXT = '0x80'
		% response: subscribe induction loop (e1) context
		RESPONSE_SUBSCRIBE_INDUCTIONLOOP_CONTEXT = '0x90'
		% command: get induction loop (e1) variable
		CMD_GET_INDUCTIONLOOP_VARIABLE = '0xa0'
		% response: get induction loop (e1) variable
		RESPONSE_GET_INDUCTIONLOOP_VARIABLE = '0xb0'
		% command: subscribe induction loop (e1) variable
		CMD_SUBSCRIBE_INDUCTIONLOOP_VARIABLE = '0xd0'
		% response: subscribe induction loop (e1) variable
		RESPONSE_SUBSCRIBE_INDUCTIONLOOP_VARIABLE = '0xe0'
		
        % command: subscribe multi-entry/multi-exit detector (e3) context
		CMD_SUBSCRIBE_MULTI_ENTRY_EXIT_DETECTOR_CONTEXT = '0x81'
		% response: subscribe multi-entry/multi-exit detector (e3) context
		RESPONSE_SUBSCRIBE_MULTI_ENTRY_EXIT_DETECTOR_CONTEXT = '0x91'
		% command: get multi-entry/multi-exit detector (e3) variable
		CMD_GET_MULTI_ENTRY_EXIT_DETECTOR_VARIABLE = '0xa1'
		% response: get multi-entry/multi-exit detector (e3) variable
		RESPONSE_GET_MULTI_ENTRY_EXIT_DETECTOR_VARIABLE = '0xb1'
		% command: subscribe multi-entry/multi-exit detector (e3) variable
		CMD_SUBSCRIBE_MULTI_ENTRY_EXIT_DETECTOR_VARIABLE = '0xd1'
		% response: subscribe multi-entry/multi-exit detector (e3) variable
		RESPONSE_SUBSCRIBE_MULTI_ENTRY_EXIT_DETECTOR_VARIABLE = '0xe1'

		% command: subscribe traffic lights context
		CMD_SUBSCRIBE_TL_CONTEXT = '0x82'
		% response: subscribe traffic lights context
		RESPONSE_SUBSCRIBE_TL_CONTEXT = '0x92'
		% command: get traffic lights variable
		CMD_GET_TL_VARIABLE = '0xa2'
		% response: get traffic lights variable
		RESPONSE_GET_TL_VARIABLE = '0xb2'
		% command: set traffic lights variable
		CMD_SET_TL_VARIABLE = '0xc2'
		% command: subscribe traffic lights variable
		CMD_SUBSCRIBE_TL_VARIABLE = '0xd2'
		% response: subscribe traffic lights variable
		RESPONSE_SUBSCRIBE_TL_VARIABLE = '0xe2'

		% command: subscribe lane context
		CMD_SUBSCRIBE_LANE_CONTEXT = '0x83'
		% response: subscribe lane context
		RESPONSE_SUBSCRIBE_LANE_CONTEXT = '0x93'
		% command: get lane variable
		CMD_GET_LANE_VARIABLE = '0xa3'
		% response: get lane variable
		RESPONSE_GET_LANE_VARIABLE = '0xb3'
		% command: set lane variable
		CMD_SET_LANE_VARIABLE = '0xc3'
		% command: subscribe lane variable
		CMD_SUBSCRIBE_LANE_VARIABLE = '0xd3'
		% response: subscribe lane variable
		RESPONSE_SUBSCRIBE_LANE_VARIABLE = '0xe3'

		% command: subscribe vehicle context
		CMD_SUBSCRIBE_VEHICLE_CONTEXT = '0x84'
		% response: subscribe vehicle context
		RESPONSE_SUBSCRIBE_VEHICLE_CONTEXT = '0x94'
		% command: get vehicle variable
		CMD_GET_VEHICLE_VARIABLE = '0xa4'
		% response: get vehicle variable
		RESPONSE_GET_VEHICLE_VARIABLE = '0xb4'
		% command: set vehicle variable
		CMD_SET_VEHICLE_VARIABLE = '0xc4'
		% command: subscribe vehicle variable
		CMD_SUBSCRIBE_VEHICLE_VARIABLE = '0xd4'
		% response: subscribe vehicle variable
		RESPONSE_SUBSCRIBE_VEHICLE_VARIABLE = '0xe4'

		% command: subscribe vehicle type context
		CMD_SUBSCRIBE_VEHICLETYPE_CONTEXT = '0x85'
		% response: subscribe vehicle type context
		RESPONSE_SUBSCRIBE_VEHICLETYPE_CONTEXT = '0x95'
		% command: get vehicle type variable
		CMD_GET_VEHICLETYPE_VARIABLE = '0xa5'
		% response: get vehicle type variable
		RESPONSE_GET_VEHICLETYPE_VARIABLE = '0xb5'
		% command: set vehicle type variable
		CMD_SET_VEHICLETYPE_VARIABLE = '0xc5'
		% command: subscribe vehicle type variable
		CMD_SUBSCRIBE_VEHICLETYPE_VARIABLE = '0xd5'
		% response: subscribe vehicle type variable
		RESPONSE_SUBSCRIBE_VEHICLETYPE_VARIABLE = '0xe5'

		% command: subscribe route context
		CMD_SUBSCRIBE_ROUTE_CONTEXT = '0x86'
		% response: subscribe route context
		RESPONSE_SUBSCRIBE_ROUTE_CONTEXT = '0x96'
		% command: get route variable
		CMD_GET_ROUTE_VARIABLE = '0xa6'
		% response: get route variable
		RESPONSE_GET_ROUTE_VARIABLE = '0xb6'
		% command: set route variable
		CMD_SET_ROUTE_VARIABLE = '0xc6'
		% command: subscribe route variable
		CMD_SUBSCRIBE_ROUTE_VARIABLE = '0xd6'
		% response: subscribe route variable
		RESPONSE_SUBSCRIBE_ROUTE_VARIABLE = '0xe6'

		% command: subscribe poi context
		CMD_SUBSCRIBE_POI_CONTEXT = '0x87'
		% response: subscribe poi context
		RESPONSE_SUBSCRIBE_POI_CONTEXT = '0x97'
		% command: get poi variable
		CMD_GET_POI_VARIABLE = '0xa7'
		% response: get poi variable
		RESPONSE_GET_POI_VARIABLE = '0xb7'
		% command: set poi variable
		CMD_SET_POI_VARIABLE = '0xc7'
		% command: subscribe poi variable
		CMD_SUBSCRIBE_POI_VARIABLE = '0xd7'
		% response: subscribe poi variable
		RESPONSE_SUBSCRIBE_POI_VARIABLE = '0xe7'

		% command: subscribe polygon context
		CMD_SUBSCRIBE_POLYGON_CONTEXT = '0x88'
		% response: subscribe polygon context
		RESPONSE_SUBSCRIBE_POLYGON_CONTEXT = '0x98'
		% command: get polygon variable
		CMD_GET_POLYGON_VARIABLE = '0xa8'
		% response: get polygon variable
		RESPONSE_GET_POLYGON_VARIABLE = '0xb8'
		% command: set polygon variable
		CMD_SET_POLYGON_VARIABLE = '0xc8'
		% command: subscribe polygon variable
		CMD_SUBSCRIBE_POLYGON_VARIABLE = '0xd8'
		% response: subscribe polygon variable
		RESPONSE_SUBSCRIBE_POLYGON_VARIABLE = '0xe8'

		% command: subscribe junction context
		CMD_SUBSCRIBE_JUNCTION_CONTEXT = '0x89'
		% response: subscribe junction context
		RESPONSE_SUBSCRIBE_JUNCTION_CONTEXT = '0x99'
		% command: get junction variable
		CMD_GET_JUNCTION_VARIABLE = '0xa9'
		% response: get junction variable
		RESPONSE_GET_JUNCTION_VARIABLE = '0xb9'
		% command: set junction variable
		CMD_SET_JUNCTION_VARIABLE = '0xc9'
		% command: subscribe junction variable
		CMD_SUBSCRIBE_JUNCTION_VARIABLE = '0xd9'
		% response: subscribe junction variable
		RESPONSE_SUBSCRIBE_JUNCTION_VARIABLE = '0xe9'

		% command: subscribe edge context
		CMD_SUBSCRIBE_EDGE_CONTEXT = '0x8a'
		% response: subscribe edge context
		RESPONSE_SUBSCRIBE_EDGE_CONTEXT = '0x9a'
		% command: get edge variable
		CMD_GET_EDGE_VARIABLE = '0xaa'
		% response: get edge variable
		RESPONSE_GET_EDGE_VARIABLE = '0xba'
		% command: set edge variable
		CMD_SET_EDGE_VARIABLE = '0xca'
		% command: subscribe edge variable
		CMD_SUBSCRIBE_EDGE_VARIABLE = '0xda'
		% response: subscribe edge variable
		RESPONSE_SUBSCRIBE_EDGE_VARIABLE = '0xea'

		% command: subscribe simulation context
		CMD_SUBSCRIBE_SIM_CONTEXT = '0x8b'
		% response: subscribe simulation context
		RESPONSE_SUBSCRIBE_SIM_CONTEXT = '0x9b'
		% command: get simulation variable
		CMD_GET_SIM_VARIABLE = '0xab'
		% response: get simulation variable
		RESPONSE_GET_SIM_VARIABLE = '0xbb'
		% command: set simulation variable
		CMD_SET_SIM_VARIABLE = '0xcb'
		% command: subscribe simulation variable
		CMD_SUBSCRIBE_SIM_VARIABLE = '0xdb'
		% response: subscribe simulation variable
		RESPONSE_SUBSCRIBE_SIM_VARIABLE = '0xeb'

		% command: subscribe GUI context
		CMD_SUBSCRIBE_GUI_CONTEXT = '0x8c'
		% response: subscribe GUI context
		RESPONSE_SUBSCRIBE_GUI_CONTEXT = '0x9c'
		% command: get GUI variable
		CMD_GET_GUI_VARIABLE = '0xac'
		% response: get GUI variable
		RESPONSE_GET_GUI_VARIABLE = '0xbc'
		% command: set GUI variable
		CMD_SET_GUI_VARIABLE = '0xcc'
		% command: subscribe GUI variable
		CMD_SUBSCRIBE_GUI_VARIABLE = '0xdc'
		% response: subscribe GUI variable
		RESPONSE_SUBSCRIBE_GUI_VARIABLE = '0xec'
        
        % command: subscribe areal detector (e2) context
		CMD_SUBSCRIBE_AREAL_DETECTOR_CONTEXT = '0x8d'
		% response: subscribe areal detector (e2) context
		RESPONSE_SUBSCRIBE_AREAL_DETECTOR_CONTEXT = '0x9d'
		% command: get areal detector (e2) variable
		CMD_GET_AREAL_DETECTOR_VARIABLE = '0xad'
		% response: get areal detector (e2) variable
		RESPONSE_GET_AREAL_DETECTOR_VARIABLE = '0xbd'
		% command: subscribe areal detector (e2) variable
		CMD_SUBSCRIBE_AREAL_DETECTOR_VARIABLE = '0xdd'
		% response: subscribe areal detector (e2) variable
		RESPONSE_SUBSCRIBE_AREAL_DETECTOR_VARIABLE = '0xed'
        
        % command: subscribe person context
        CMD_SUBSCRIBE_PERSON_CONTEXT = '0x8e'
        % response: subscribe person context
        RESPONSE_SUBSCRIBE_PERSON_CONTEXT = '0x9e'
        % command: get person variable
        CMD_GET_PERSON_VARIABLE = '0xae'
        % response: get person variable
        RESPONSE_GET_PERSON_VARIABLE = '0xbe'
        % command: set person variable
        CMD_SET_PERSON_VARIABLE = '0xce'
        % command: subscribe person variable
        CMD_SUBSCRIBE_PERSON_VARIABLE = '0xde'
        % response: subscribe person variable
        RESPONSE_SUBSCRIBE_PERSON_VARIABLE = '0xee'


		% ****************************************
		% POSITION REPRESENTATIONS
		% ****************************************
		% Position in geo-coordinates
		POSITION_LON_LAT = '0x00'
		% 2D cartesian coordinates
		POSITION_2D = '0x01'
		% Position in geo-coordinates with altitude
		POSITION_LON_LAT_ALT = '0x02'
		% 3D cartesian coordinates
		POSITION_3D = '0x03'
		% Position on road map
		POSITION_ROADMAP = '0x04'


		% ****************************************
		% DATA TYPES
		% ****************************************
		% Boundary Box (4 doubles)
		TYPE_BOUNDINGBOX = '0x05'
		% Polygon (2*n doubles)
		TYPE_POLYGON = '0x06'
		% unsigned byte
		TYPE_UBYTE = '0x07'
		% signed byte
		TYPE_BYTE = '0x08'
		% 32 bit signed integer
		TYPE_INTEGER = '0x09'
		% float
		TYPE_FLOAT = '0x0A'
		% double
		TYPE_DOUBLE = '0x0B'
		% 8 bit ASCII string
		TYPE_STRING = '0x0C'
		% list of traffic light phases
		TYPE_TLPHASELIST = '0x0D'
		% list of strings
		TYPE_STRINGLIST = '0x0E'
		% compound object
		TYPE_COMPOUND = '0x0F'
		% color (four ubytes)
		TYPE_COLOR = '0x11'


		% ****************************************
		% RESULT TYPES
		% ****************************************
		% result type: Ok
		RTYPE_OK = '0x00'
		% result type: not implemented
		RTYPE_NOTIMPLEMENTED = '0x01'
		% result type: error
		RTYPE_ERR = '0xFF'

		% return value for invalid queries (especially vehicle is not on the road)
		INVALID_DOUBLE_VALUE = -1001.
		% return value for invalid queries (especially vehicle is not on the road)
		INVALID_INT_VALUE = -1


		% ****************************************
		% TRAFFIC LIGHT PHASES
		% ****************************************
		% red phase
		TLPHASE_RED = '0x01'
		% yellow phase
		TLPHASE_YELLOW = '0x02'
		% green phase
		TLPHASE_GREEN = '0x03'
		% tl is blinking
		TLPHASE_BLINKING = '0x04'
		% tl is off and not blinking
		TLPHASE_NOSIGNAL = '0x05'


		% ****************************************
		% DIFFERENT DISTANCE REQUESTS
		% ****************************************
		% air distance
		REQUEST_AIRDIST = '0x00'
		% driving distance
		REQUEST_DRIVINGDIST = '0x01'


		% ****************************************
		% VEHICLE REMOVAL REASONS
		% ****************************************
		% vehicle started teleport
		REMOVE_TELEPORT = '0x00'
		% vehicle removed while parking
		REMOVE_PARKING = '0x01'
		% vehicle arrived
		REMOVE_ARRIVED = '0x02'
		% vehicle was vaporized
		REMOVE_VAPORIZED = '0x03'
		% vehicle finished route during teleport
		REMOVE_TELEPORT_ARRIVED = '0x04'


		% ****************************************
		% VARIABLE TYPES (for CMD_GET_*_VARIABLE)
		% ****************************************
		% list of instances' ids (get: all)
		ID_LIST = '0x00'

		% count of instances (get: all)
		ID_COUNT = '0x01'

		% subscribe object variables (get: all)
		OBJECT_VARIABLES_SUBSCRIPTION = '0x02'

		% subscribe context variables (get: all)
		SURROUNDING_VARIABLES_SUBSCRIPTION = '0x03'

		% last step vehicle number (get: induction loops, multi-entry/multi-exit detector, lanes, edges)
		LAST_STEP_VEHICLE_NUMBER = '0x10'

		% last step vehicle number (get: induction loops, multi-entry/multi-exit detector, lanes, edges)
		LAST_STEP_MEAN_SPEED = '0x11'

		% last step vehicle number (get: induction loops, multi-entry/multi-exit detector, lanes, edges)
		LAST_STEP_VEHICLE_ID_LIST = '0x12'

		% last step occupancy (get: induction loops, lanes, edges)
		LAST_STEP_OCCUPANCY = '0x13'

		% last step vehicle halting number (get: multi-entry/multi-exit detector, lanes, edges)
		LAST_STEP_VEHICLE_HALTING_NUMBER = '0x14'

		% last step mean vehicle length (get: induction loops, lanes, edges)
		LAST_STEP_LENGTH = '0x15'

		% last step time since last detection (get: induction loops)
		LAST_STEP_TIME_SINCE_DETECTION = '0x16'

		% entry times
		LAST_STEP_VEHICLE_DATA = '0x17'
		
		% last step jam length in vehicles
		JAM_LENGTH_VEHICLE = '0x18'
		
		% last step jam length in meters
		JAM_LENGTH_METERS = '0x19'

		% traffic light states, encoded as rRgGyYoO tuple (get: traffic lights)
		TL_RED_YELLOW_GREEN_STATE = '0x20'

		% index of the phase (set: traffic lights)
		TL_PHASE_INDEX = '0x22'

		% traffic light program (set: traffic lights)
		TL_PROGRAM = '0x23'

		% phase duration (set: traffic lights)
		TL_PHASE_DURATION = '0x24'

		% controlled lanes (get: traffic lights)
		TL_CONTROLLED_LANES = '0x26'

		% controlled links (get: traffic lights)
		TL_CONTROLLED_LINKS = '0x27'

		% index of the current phase (get: traffic lights)
		TL_CURRENT_PHASE = '0x28'

		% name of the current program (get: traffic lights)
		TL_CURRENT_PROGRAM = '0x29'

		% controlled junctions (get: traffic lights)
		TL_CONTROLLED_JUNCTIONS = '0x2a'

		% complete definition (get: traffic lights)
		TL_COMPLETE_DEFINITION_RYG = '0x2b'

		% complete program (set: traffic lights)
		TL_COMPLETE_PROGRAM_RYG = '0x2c'

		% assumed time to next switch (get: traffic lights)
		TL_NEXT_SWITCH = '0x2d'

        % current state, using external signal names (get: traffic lights)
        TL_EXTERNAL_STATE = '0x2e'

		% outgoing link number (get: lanes)
		LANE_LINK_NUMBER = '0x30'

		% id of parent edge (get: lanes)
		LANE_EDGE_ID = '0x31'

		% outgoing link definitions (get: lanes)
		LANE_LINKS = '0x33'

		% list of allowed vehicle classes (get&set: lanes)
		LANE_ALLOWED = '0x34'

		% list of not allowed vehicle classes (get&set: lanes)
		LANE_DISALLOWED = '0x35'


		% speed (get: vehicle)
		VAR_SPEED = '0x40'

		% maximum allowed/possible speed (get: vehicle types, lanes, set: edges, lanes)
		VAR_MAXSPEED = '0x41'

		% position (2D) (get: vehicle, poi, set: poi)
		VAR_POSITION = '0x42'
        
        % position (3D) (get: vehicle, poi, set: poi)
        VAR_POSITION3D = '0x39'

		% angle (get: vehicle)
		VAR_ANGLE = '0x43'

		% angle (get: vehicle types, lanes, set: lanes)
		VAR_LENGTH = '0x44'

		% color (get: vehicles, vehicle types, polygons, pois)
		VAR_COLOR = '0x45'

		% max. acceleration (get: vehicle types)
		VAR_ACCEL = '0x46'

		% max. deceleration (get: vehicle types)
		VAR_DECEL = '0x47'

		% driver reaction time (get: vehicle types)
		VAR_TAU = '0x48'

		% vehicle class (get: vehicle types)
		VAR_VEHICLECLASS = '0x49'

		% emission class (get: vehicle types)
		VAR_EMISSIONCLASS = '0x4a'

		% shape class (get: vehicle types)
		VAR_SHAPECLASS = '0x4b'

		% minimum gap (get: vehicle types)
		VAR_MINGAP = '0x4c'

		% width (get: vehicle types, lanes)
		VAR_WIDTH = '0x4d'

		% shape (get: polygons)
		VAR_SHAPE = '0x4e'

		% type id (get: vehicles, polygons, pois)
		VAR_TYPE = '0x4f'

		% road id (get: vehicles)
		VAR_ROAD_ID = '0x50'

		% lane id (get: vehicles)
		VAR_LANE_ID = '0x51'

		% lane index (get: vehicles)
		VAR_LANE_INDEX = '0x52'

		% route id (get & set: vehicles)
		VAR_ROUTE_ID = '0x53'

		% edges (get: routes)
		VAR_EDGES = '0x54'

		% filled? (get: polygons)
		VAR_FILL = '0x55'

		% position (1D along lane) (get: vehicle)
		VAR_LANEPOSITION = '0x56'

		% route (set: vehicles)
		VAR_ROUTE = '0x57'

		% travel time information (get&set: vehicle)
		VAR_EDGE_TRAVELTIME = '0x58'

		% effort information (get&set: vehicle)
		VAR_EDGE_EFFORT = '0x59'

		% last step travel time (get: edge, lane)
		VAR_CURRENT_TRAVELTIME = '0x5a'

		% signals state (get/set: vehicle)
		VAR_SIGNALS = '0x5b'

		% new lane/position along (set: vehicle)
		VAR_MOVE_TO = '0x5c'

		% driver imperfection (set: vehicle)
		VAR_IMPERFECTION = '0x5d'

		% speed factor (set: vehicle)
		VAR_SPEED_FACTOR = '0x5e'

		% speed deviation (set: vehicle)
		VAR_SPEED_DEVIATION = '0x5f'

		% speed without TraCI influence (get: vehicle)
		VAR_SPEED_WITHOUT_TRACI = '0xb1'

		% best lanes (get: vehicle)
		VAR_BEST_LANES = '0xb2'

		% how speed is set (set: vehicle)
		VAR_SPEEDSETMODE = '0xb3'

		% move vehicle, VTD version (set: vehicle)
		VAR_MOVE_TO_VTD = '0xb4'

		% is the vehicle stopped, and if so parked and/or triggered?
		% value = stopped + 2 * parking + 4 * triggered
		VAR_STOPSTATE = '0xb5'
        
        % how lane changing is performed (set: vehicle)
        VAR_LANECHANGE_MODE = '0xb6'
        
        % maximum speed regarding max speed on the current lane and speed factor (get: vehicle)
        VAR_ALLOWED_SPEED = '0xb7'

		% current CO2 emission of a node (get: vehicle, lane, edge)
		VAR_CO2EMISSION = '0x60'

		% current CO emission of a node (get: vehicle, lane, edge)
		VAR_COEMISSION = '0x61'

		% current HC emission of a node (get: vehicle, lane, edge)
		VAR_HCEMISSION = '0x62'

		% current PMx emission of a node (get: vehicle, lane, edge)
		VAR_PMXEMISSION = '0x63'

		% current NOx emission of a node (get: vehicle, lane, edge)
		VAR_NOXEMISSION = '0x64'

		% current fuel consumption of a node (get: vehicle, lane, edge)
		VAR_FUELCONSUMPTION = '0x65'

		% current noise emission of a node (get: vehicle, lane, edge)
		VAR_NOISEEMISSION = '0x66'

		% current person number (get: vehicle)
		VAR_PERSON_NUMBER = '0x67'
		VAR_BUS_STOP_WAITING = '0x67'

        % current leader together with gap (get: vehicle)
        VAR_LEADER = '0x68'
        
        %current waiting time (get: vehicle, lane)
        VAR_WAITING_TIME = '0x7a'

		% current time step (get: simulation)
		VAR_TIME_STEP = '0x70'

		% number of loaded vehicles (get: simulation)
		VAR_LOADED_VEHICLES_NUMBER = '0x71'

		% loaded vehicle ids (get: simulation)
		VAR_LOADED_VEHICLES_IDS = '0x72'

		% number of departed vehicle (get: simulation)
		VAR_DEPARTED_VEHICLES_NUMBER = '0x73'

		% departed vehicle ids (get: simulation)
		VAR_DEPARTED_VEHICLES_IDS = '0x74'

		% number of vehicles starting to teleport (get: simulation)
		VAR_TELEPORT_STARTING_VEHICLES_NUMBER = '0x75'

		% ids of vehicles starting to teleport (get: simulation)
		VAR_TELEPORT_STARTING_VEHICLES_IDS = '0x76'

		% number of vehicles ending to teleport (get: simulation)
		VAR_TELEPORT_ENDING_VEHICLES_NUMBER = '0x77'

		% ids of vehicles ending to teleport (get: simulation)
		VAR_TELEPORT_ENDING_VEHICLES_IDS = '0x78'

		% number of arrived vehicles (get: simulation)
		VAR_ARRIVED_VEHICLES_NUMBER = '0x79'

		% ids of arrived vehicles (get: simulation)
		VAR_ARRIVED_VEHICLES_IDS = '0x7a'

		% delta t (get: simulation)
		VAR_DELTA_T = '0x7b'

		% bounding box (get: simulation)
		VAR_NET_BOUNDING_BOX = '0x7c'

		% minimum number of expected vehicles (get: simulation)
		VAR_MIN_EXPECTED_VEHICLES = '0x7d'

        % number of vehicles starting to park (get: simulation)
        VAR_STOP_STARTING_VEHICLES_NUMBER = '0x68'
        
        % ids of vehicles starting to park (get: simulation)
        VAR_STOP_STARTING_VEHICLES_IDS = '0x69'
        
        % number of vehicles ending to park (get: simulation)
        VAR_STOP_ENDING_VEHICLES_NUMBER = '0x6a'
        
        % ids of vehicles ending to park (get: simulation)
        VAR_STOP_ENDING_VEHICLES_IDS = '0x6b'
        
        % number of vehicles starting to park (get: simulation)
        VAR_PARKING_STARTING_VEHICLES_NUMBER = '0x6c'
        
        % ids of vehicles starting to park (get: simulation)
        VAR_PARKING_STARTING_VEHICLES_IDS = '0x6d'
        
        % number of vehicles ending to park (get: simulation)
        VAR_PARKING_ENDING_VEHICLES_NUMBER = '0x6e'
        
        % ids of vehicles ending to park (get: simulation)
        VAR_PARKING_ENDING_VEHICLES_IDS = '0x6f'
        
        % clears the simulation of all not inserted vehicles (set: simulation)
        CMD_CLEAR_PENDING_VEHICLES = '0x94'
        
        % sets/retrieves abstract parameter
        VAR_PARAMETER = '0x7e'

		% add an instance (poi, polygon, vehicle, route)
		ADD = '0x80'

		% remove an instance (poi, polygon)
		REMOVE = '0x81'

		% convert coordinates
		POSITION_CONVERSION = '0x82'

		% distance between points or vehicles
		DISTANCE_REQUEST = '0x83'
        
        %the current driving distance
        VAR_DISTANCE = '0x84'
        
        % add a fully specified instance (vehicle)
        ADD_FULL = '0x85'

		% force rerouting based on travel time (vehicles)
		CMD_REROUTE_TRAVELTIME = '0x90'

		% force rerouting based on effort (vehicles)
		CMD_REROUTE_EFFORT = '0x91'

		% validates current route (vehicles)
		VAR_ROUTE_VALID = '0x92'


		% zoom
		VAR_VIEW_ZOOM = '0xa0'

		% view position
		VAR_VIEW_OFFSET = '0xa1'

		% view schema
		VAR_VIEW_SCHEMA = '0xa2'

		% view by boundary
		VAR_VIEW_BOUNDARY = '0xa3'

		% screenshot
		VAR_SCREENSHOT = '0xa5'

		% track vehicle
		VAR_TRACK_VEHICLE = '0xa6'
		
	end
end
