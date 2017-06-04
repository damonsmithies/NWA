/*
© 2015 Zenix Gaming Ops
Developed by Rod-Serling and Vishpala

All rights reserved.

Function:
	AVS_configuration - Defines the configuration for AVS.
*/

AVS_Debug = false;

// This array contains world center and radius for maps supported.
AVS_WorldInfo =
[
    ["Altis", [15360, 15360, 0], 15360],
    ["Esseker", [6150,6150,0], 6150],
    ["Chernarus", [7700,8500,0], 11000],
	["Lingor3", [4968.00,4938.00,0], 10000],
	["Tanoa", [7680,7680,0], 7680]
];

//**************************************************************

// Setting this to true will disable thermal for all vehicles.
AVS_DisableVehicleThermalGlobal = false;

// If the above is not set to true, then this will disable thermal for specific classes of vehicles.
AVS_DisableVehicleThermal =
[
//	"VehicleClassName"
];

// Setting this to true will disable NVGs for all vehicles.
AVS_DisableVehicleNVGsGlobal = false;

// If the above is not set to true, then this will disable thermal for specific classes of vehicles.
AVS_DisableVehicleNVG =
[
//	"VehicleClassName"
];

// Any weapon classes listed here will be sanitized from all vehicles.
AVS_GlobalWeaponBlacklist =
[
//	"WeaponClassName"
	"missiles_DAR", 				// Removes DAR missiles from all vehicles
	"missiles_DAGR"
];

// Any ammo classes listed here will be sanitized from all vehicles.
AVS_GlobalAmmoBlacklist =
[
//	"AmmoClassName"
	"24Rnd_missiles",
	"12Rnd_missiles",
	"12Rnd_PG_missiles",
	"24Rnd_PG_missiles"
];

// You may remove specific weapon classes from specific vehicle classes here.
AVS_VehicleWeaponBlacklist =
[
//	["VehicleClassName", ["WeaponClassName1", "WeaponClassName2", ...]]
];

// You may remove specific ammo classes from specific vehicle classes here.
AVS_VehicleAmmoBlacklist =
[
//	["VehicleClassName", ["AmmoClassName1", "AmmoClassName2", ...]]
];

//**************************************************************

// Set to false to disable the entire rearm system.
AVS_RearmSystemActive = true;

// Distance away from an object to get the rearm option.
AVS_RearmDistance = 10;

// Number of seconds it takes to rearm. (NOT YET IMPLEMENTED)
AVS_RearmTime = 15;

// Disabled rearming at ammo trucks.
AVS_DisableStockRearm = true;

// Objects of this type will give the "rearm" action.
AVS_RearmObjects =
[
//	"ClassName"
	//"Land_fs_feed_F"	// Gas station pump.
	"Land_Hangar_F",
	"Land_TentHangar_V1_F",
	"Land_HelipadSquare_F",
	"Land_HelipadCircle_F"
];

// Default cost of a magazine if not found in AVS_RearmCosts
AVS_RearmCostDefault = 99999999;

// Costs of individual magazines.
AVS_RearmCosts =
[
//	["MagazineClassName", cost]
	["Laserbatteries", 0],								// Laser Designator Batteries
	["SmokeLauncherMag", 20],							// Smoke CM magazine
	["200Rnd_127x99_mag_Tracer_Yellow", 400],			// Strider HMG gun
	["200Rnd_127x99_mag_Tracer_Red", 400],				// Hunter HMG gun
	["168Rnd_CMFlare_Chaff_Magazine", 20],				// Helicopter/Y-32 flares
	["2000Rnd_65x39_Belt_Tracer_Red", 4000],			// Ghosthawk & Huron guns
	["100Rnd_127x99_mag_Tracer_Yellow", 200],			// Armed Offroad magazine.
	["5000Rnd_762x51_Belt", 6000],						// Pawnee belt
	["5000Rnd_762x51_Yellow_Belt", 6000],				// Hellcat belt
	["2000Rnd_65x39_Belt_Tracer_Green_Splash", 4000],	// Orca belt
	["200Rnd_762x51_Belt_Green", 500],					// BRDM2_HQ
	["50Rnd_127x107_DSHKM_M", 350],						// BTR40_MG
	["2000Rnd_762x51_Belt", 2400],						// HMMWV_M134
	["500Rnd_65x39_Belt_Tracer_Green_Splash", 1000],	// Qilin belt
	["100Rnd_127x99_mag_Tracer_Red", 200],				// Prowler HMG mag
	["130Rnd_338_Mag", 260],							// Prowler MMG mag
	["240Rnd_CMFlare_Chaff_Magazine", 29],				// Blackfish flares
	//["240Rnd_40mm_GPR_Tracer_Red_shells", 430],			// Blackfish autocannon
	//["160Rnd_40mm_APFSDS_Tracer_Red_shells", 290],		// Blackfish autocannon
	//["100Rnd_105mm_HEAT_MP", 480],						// Blackfish cannon 105mm
	["4000Rnd_20mm_Tracer_Red_shells", 4800],			// Blackfish gatling 20mm
	["250Rnd_30mm_HE_shells_Tracer_Green", 860]			// Y-32 gatling 30mm
];

//**************************************************************

// Disabled stock refueling at fuel trucks / gas pumps.
AVS_DisableStockRefuel = true;

// Use AVS Refuel System
AVS_RefuelSystemActive = true;

// Use AVS to fill Fuel-Canister with AVS Refuel Objects (Gas Station Pump). It's active only if AVS Refuel System is active too.
AVS_FillCanisterActive = true; // Remember to disable "Exile fill canister empty", to do this see Installation.txt

AVS_RefuelDistance = 5;	//  maximum distance to refuel. It doesn't affect the choppers that refuel on roof.
AVS_RefuelObjects =
[
	//"Land_fs_feed_F", 			// Gas Station Pump (Altis)
	//"Land_FuelStation_Feed_F",	// Stratis/Esseker
	//"Land_A_FuelStation_Shed",	// Esseker/Chernarus
	//"Land_A_FuelStation_Feed",	// Chernarus
	"Land_FuelStation_01_pump_F",	// Tanoa
	"Land_FuelStation_02_pump_F"
];

AVS_FuelCost = 5;					// 5 poptabs/liter
AVS_RefuelSpeed = 5;				// 3 liters/second (for ground vehicles, small tank)
AVS_RefuelSpeedAirVehicle = 20;		// 20 liters/second (for air vehicles, big tank so need to be faster)

//**************************************************************

AVS_DebugMarkers = false;
AVS_PersistentVehiclesPinCode = "0000";
AVS_PersistentVehiclesAmmoPercent = 0; // 100 = full ammo, 50 = half ammo, 0 = no ammo
AVS_PersistentVehiclesFuelPercent = 25; // 100 = full, 50 = half, 0 = empty

//**************************************************************

AVS_useSpawnedPersistentVehiclesLocation = true; // Spawns persistent vehicles at specified locations
AVS_LocationSearchRadius = 50; // Set to 0 for exact positioning.
AVS_spawnedPersistentVehiclesLocation =
[
	//["ID Tag", ["ClassName", "ClassName", ...], [DamageMin, DamageMax], NumberToPersist, [[Location1], [Location2], ...]]
	// NOTE: ID Tag is how AVS tracks how many to persist. If there's 5 vehicles with the ID tag "RandomVehicles" then no more will spawn here.
	["RandomVehicles", ["I_MRAP_03_hmg_F", "B_Heli_Light_01_armed_F"], [0.1, 0.75], 5, [[14909.1,16462.8,0.00143814], [15086.6,16636.2,0.00144386]]],
	// OR
	//["ID Tag", ["ClassName", "ClassName", ...], Damage, NumberToPersist, [[Location1], [Location2], ...]]
	["RandomHeli", ["B_Heli_Light_01_armed_F"], 0.25, 2, [[15186.8,16741.9,0.00143814]]]
];

//**************************************************************

AVS_useSpawnedPersistentVehiclesRoadside = true; // Spawns persistent vehicles near roads.
AVS_RoadSearchRadius = 50; // Max distance to the road
AVS_spawnedPersistentVehiclesRoadside =
[
	//["ID Tag", ["Class1", "Class2"], [DamageMin, DamageMax], NumberToPersist],
	// OR
	//["ID Tag", ["Class1", "Class2"], Damage, NumberToPersist]	
	
	// CARS
		// UAZ
		["CarsUAZ", ["Exile_Car_UAZ_Green", "Exile_Car_UAZ_Open_Green"], [0.1, 0.25], 2],
		//BTR40
		["CarsBTR40", ["Exile_Car_BTR40_Green", "Exile_Car_UAZ_Open_Green"], [0.1, 0.25], 2],
		// LAND ROVER
		["CarsLR", ["Exile_Car_LandRover_Red", "Exile_Car_LandRover_Urban", "Exile_Car_LandRover_Green", "Exile_Car_LandRover_Sand", "Exile_Car_LandRover_Desert"], [0.1, 0.25], 2],
		// OFFROAD
		["CarsOR", ["Exile_Car_Offroad_Red", "Exile_Car_Offroad_Beige", "Exile_Car_Offroad_White", "Exile_Car_Offroad_Blue", "Exile_Car_Offroad_DarkRed", "Exile_Car_Offroad_BlueCustom", "Exile_Car_Offroad_Guerilla01", "Exile_Car_Offroad_Guerilla02", "Exile_Car_Offroad_Guerilla03", "Exile_Car_Offroad_Guerilla04", "Exile_Car_Offroad_Guerilla05", "Exile_Car_Offroad_Guerilla06", "Exile_Car_Offroad_Guerilla07", "Exile_Car_Offroad_Guerilla08", "Exile_Car_Offroad_Guerilla09", "Exile_Car_Offroad_Guerilla10", "Exile_Car_Offroad_Guerilla11", "Exile_Car_Offroad_Guerilla12", "Exile_Car_Offroad_Rusty1", "Exile_Car_Offroad_Rusty2", "Exile_Car_Offroad_Rusty3", "Exile_Car_Offroad_Repair_Civillian", "Exile_Car_Offroad_Repair_Red", "Exile_Car_Offroad_Repair_Beige", "Exile_Car_Offroad_Repair_White", "Exile_Car_Offroad_Repair_Blue", "Exile_Car_Offroad_Repair_DarkRed", "Exile_Car_Offroad_Repair_BlueCustom", "Exile_Car_Offroad_Repair_Guerilla01", "Exile_Car_Offroad_Repair_Guerilla02", "Exile_Car_Offroad_Repair_Guerilla03", "Exile_Car_Offroad_Repair_Guerilla04", "Exile_Car_Offroad_Repair_Guerilla05", "Exile_Car_Offroad_Repair_Guerilla06", "Exile_Car_Offroad_Repair_Guerilla07", "Exile_Car_Offroad_Repair_Guerilla08", "Exile_Car_Offroad_Repair_Guerilla09", "Exile_Car_Offroad_Repair_Guerilla10", "Exile_Car_Offroad_Repair_Guerilla11", "Exile_Car_Offroad_Repair_Guerilla12"], [0.1, 0.25], 2],
		// SUV
		["CarsSUV", ["Exile_Car_SUV_Red", "Exile_Car_SUV_Black", "Exile_Car_SUV_Grey", "Exile_Car_SUV_Orange"], [0.1, 0.25], 2],
		// HMMWV
		["CarsHMMWV", ["Exile_Car_HMMWV_M134_Green", "Exile_Car_HMMWV_M134_Desert", "Exile_Car_HMMWV_M2_Green", "Exile_Car_HMMWV_M2_Desert", "Exile_Car_HMMWV_MEV_Green", "Exile_Car_HMMWV_MEV_Desert", "Exile_Car_HMMWV_UNA_Green", "Exile_Car_HMMWV_UNA_Desert"], [0.1, 0.25], 2],
	

	// ARMA 3 CARS
		// OFFROAD
		["Arma3CarsSUV", ["B_G_Offroad_01_F", "B_G_Offroad_01_repair_F"], [0.1, 0.25], 2],
		// IFRIT
		["Arma3CarsIFRIT", ["O_MRAP_02_F"], [0.1, 0.25], 3],
		// STRYDER
		["Arma3CarsSTRYDER", ["I_MRAP_03_F"], [0.1, 0.25], 3],
		
	// APEX CARS
		// PROWLER
		["ApexCarsPROWLER", ["B_T_LSV_01_unarmed_F"], [0.1, 0.25], 3],
		// QILIN
		["ApexCarsQILIN", ["O_T_LSV_02_unarmed_F"], [0.1, 0.25], 3],

	// MAS CARS
		// UAZ
		["MASCarsUAZ", ["I_mas_cars_UAZ_Unarmed", "I_mas_cars_UAZ_Med", "O_mas_cars_UAZ_Unarmed", "O_mas_cars_UAZ_Med"], [0.1, 0.25], 2],
		// LAND ROVERS
		["MASCarsLR", ["B_mas_cars_LR_Unarmed", "B_mas_cars_LR_Med", "I_mas_cars_LR_soft_Unarmed", "I_mas_cars_LR_soft_Med"], [0.1, 0.25], 2],
		// HILUX
		["MASCarsHILUX", ["B_mas_cars_Hilux_Unarmed", "B_mas_cars_Hilux_Med"], [0.1, 0.25], 2],
		// HMMWV
		["MASCarsHILUX", ["B_mas_HMMWV_UNA", "B_mas_HMMWV_MEV", "B_mas_HMMWV_UNA_des", "B_mas_HMMWV_MEV_des"], [0.1, 0.25], 2],
		

	// CUP VEHICLES UNARMED 
		// UAZ
		["CUPCVehiclesUAZ", ["CUP_C_UAZ_Unarmed_TK_CIV", "CUP_O_UAZ_Unarmed_RU", "CUP_I_UAZ_Unarmed_UN", "CUP_O_UAZ_Unarmed_TKA", "CUP_O_UAZ_Unarmed_CHDKZ", "CUP_B_UAZ_Unarmed_ACR", "CUP_B_UAZ_Unarmed_CDF", "CUP_O_UAZ_Open_CHDKZ", "CUP_O_UAZ_Open_RU", "CUP_O_UAZ_Open_TKA", "CUP_I_UAZ_Open_UN", "CUP_B_UAZ_Open_ACR", "CUP_B_UAZ_Open_CDF", "CUP_C_UAZ_Open_TK_CIV"], [0.1, 0.25], 2],
		// URAL
		["CUPCVehiclesURAL", ["CUP_C_Ural_Civ_01", "CUP_C_Ural_Civ_02", "CUP_C_Ural_Civ_03", "CUP_C_Ural_Open_Civ_01", "CUP_C_Ural_Open_Civ_02", "CUP_C_Ural_Open_Civ_03", "CUP_O_Ural_TKA", "CUP_O_Ural_RU", "CUP_I_Ural_UN", "CUP_B_Ural_CDF", "CUP_O_Ural_CHDKZ", "CUP_O_Ural_SLA", "CUP_O_Ural_Open_TKA", "CUP_B_Ural_Open_CDF", "CUP_O_Ural_Open_RU", "CUP_O_Ural_Open_CHDKZ", "CUP_O_Ural_Open_SLA", "CUP_O_Ural_Empty_SLA", "CUP_B_Ural_Empty_CDF", "CUP_I_Ural_Empty_UN", "CUP_O_Ural_Empty_RU", "CUP_O_Ural_Empty_CHDKZ", "CUP_O_Ural_Empty_TKA", "CUP_O_Ural_Repair_SLA", "CUP_O_Ural_Repair_TKA", "CUP_O_Ural_Repair_CHDKZ", "CUP_O_Ural_Repair_RU", "CUP_I_Ural_Repair_UN", "CUP_B_Ural_Repair_CDF", "CUP_B_Ural_Refuel_CDF" ,"CUP_O_Ural_Refuel_RU", "CUP_O_Ural_Refuel_CHDKZ", "CUP_O_Ural_Refuel_TKA", "CUP_O_Ural_Refuel_SLA"], [0.1, 0.25], 4],
		// LAND ROVER
		["CUPCVehiclessLR", ["CUP_C_LR_Transport_CTK", "CUP_O_LR_Transport_TKA", "CUP_O_LR_Transport_TKM", "CUP_B_LR_Transport_CZ_W", "CUP_B_LR_Transport_CZ_D", "CUP_B_LR_Transport_GB_W", "CUP_B_LR_Transport_GB_D", "CUP_B_LR_Ambulance_CZ_W", "CUP_B_LR_Ambulance_CZ_D", "CUP_B_LR_Ambulance_GB_W", "CUP_B_LR_Ambulance_GB_D", "CUP_O_LR_Ambulance_TKA"], [0.1, 0.25], 2],
		// HMMV
		["CUPCVehiclesHMMV", ["CUP_B_HMMWV_Unarmed_USA", "CUP_B_HMMWV_Ambulance_USMC", "CUP_B_HMMWV_Ambulance_USA", "CUP_B_HMMWV_Ambulance_ACR", "CUP_B_HMMWV_Transport_USA"], [0.1, 0.25], 4],
		// BTR 40
		["CUPVehiclesBTR40", ["CUP_I_M113_Med_RACS", "CUP_I_M113_Med_UN"], [0.1, 0.25], 2],

	
	// MAS TRUCKS 
		// URAL
		["MASTrucksURAL", ["I_mas_cars_Ural", "I_mas_cars_Ural_open", "I_mas_cars_Ural_repair", "I_mas_cars_Ural_fuel", "O_mas_cars_Ural", "O_mas_cars_Ural_open", "O_mas_cars_Ural_repair", "O_mas_cars_Ural_fuel"], [0.1, 0.25], 2],
		
	// ARMA 3 TRUCKS
		// VAN
		["Ama3TrucksVAN", ["B_G_Van_01_transport_F", "B_G_Van_01_fuel_F", "O_G_Van_01_transport_F", "O_G_Van_01_fuel_F", "I_G_Van_01_transport_F", "I_G_Van_01_fuel_F"], [0.1, 0.25], 2],
		// HEMMT
		["Ama3TrucksHEMMT", ["B_Truck_01_transport_F", "B_Truck_01_covered_F", "B_Truck_01_mover_F", "B_Truck_01_box_F", "B_Truck_01_Repair_F", "B_Truck_01_ammo_F", "B_Truck_01_fuel_F", "B_Truck_01_medical_F"], [0.1, 0.25], 6],
		// ZAMAK
		["Ama3TrucksZAMAK", ["O_Truck_02_covered_F", "O_Truck_02_transport_F", "O_Truck_02_box_F", "O_Truck_02_medical_F", "O_Truck_02_Ammo_F", "O_Truck_02_fuel_F", "I_Truck_02_transport_F", "I_Truck_02_ammo_F", "I_Truck_02_box_F", "I_Truck_02_medical_F", "I_Truck_02_fuel_F"], [0.1, 0.25], 6],
		// TEMPEST
		["CUPVehiclesBTR40", ["O_Truck_03_transport_F", "O_Truck_03_covered_F", "O_Truck_03_repair_F", "O_Truck_03_ammo_F", "O_Truck_03_fuel_F", "O_Truck_03_medical_F", "O_Truck_03_device_F"], [0.1, 0.25], 2]
		
	
		/*
	//////////
	// CARS //
	//////////
	
	//UAZ
	class Exile_Car_UAZ_Green { quality = 2; price = 7000; }; common
	class Exile_Car_UAZ_Open_Green	{ quality = 2; price = 8000; }; common
	
	//BTR40
	class Exile_Car_BTR40_Green { quality = 2; price = 15000; }; common
	class Exile_Car_BTR40_Camo { quality = 2; price = 15000; }; common
	
	// LAND ROVER
	class Exile_Car_LandRover_Red { quality = 3; price = 11000; }; common
	class Exile_Car_LandRover_Urban { quality = 3; price = 11000; }; common
	class Exile_Car_LandRover_Green { quality = 3; price = 11000; }; common
	class Exile_Car_LandRover_Sand { quality = 3; price = 11000; }; common
	class Exile_Car_LandRover_Desert { quality = 3; price = 11000; }; common
	
	// OFFROAD
	class Exile_Car_Offroad_Red { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Beige { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_White { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Blue { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_DarkRed { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_BlueCustom { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Guerilla01 { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Guerilla02 { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Guerilla03 { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Guerilla04 { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Guerilla05 { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Guerilla06 { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Guerilla07 { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Guerilla08 { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Guerilla09 { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Guerilla10 { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Guerilla11 { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Guerilla12 { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Rusty1 { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Rusty2 { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Rusty3 { quality = 3; price = 16000; }; common
	class Exile_Car_Offroad_Repair_Civillian { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_Red { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_Beige { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_White { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_Blue { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_DarkRed { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_BlueCustom { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_Guerilla01 { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_Guerilla02 { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_Guerilla03 { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_Guerilla04 { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_Guerilla05 { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_Guerilla06 { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_Guerilla07 { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_Guerilla08 { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_Guerilla09 { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_Guerilla10 { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_Guerilla11 { quality = 4; price = 12500; }; common
	class Exile_Car_Offroad_Repair_Guerilla12 { quality = 4; price = 12500; }; common

	// SUV
	class Exile_Car_SUV_Red { quality = 3; price = 14000; }; common
	class Exile_Car_SUV_Black { quality = 3; price = 14000; }; common
	class Exile_Car_SUV_Grey { quality = 3; price = 14000; }; common
	class Exile_Car_SUV_Orange { quality = 3; price = 14000; }; common
	
	// HMMWV
	class Exile_Car_HMMWV_M134_Green { quality = 5; price = 33000; }; common
	class Exile_Car_HMMWV_M134_Desert { quality = 5; price = 33000; }; common
	class Exile_Car_HMMWV_M2_Green { quality = 6; price = 40000; }; common
	class Exile_Car_HMMWV_M2_Desert { quality = 6; price = 40000; }; common
	class Exile_Car_HMMWV_MEV_Green { quality = 3; price = 21000; }; common
	class Exile_Car_HMMWV_MEV_Desert { quality = 3; price = 21000; }; common
	class Exile_Car_HMMWV_UNA_Green { quality = 3; price = 21000; }; common
	class Exile_Car_HMMWV_UNA_Desert { quality = 3; price = 21000; }; common
	
	/////////////////
	// ARMA 3 CARS //
	/////////////////
	
	// OFFROAD
	class B_G_Offroad_01_F  		{ quality = 3; price = 15000; }; common
	class B_G_Offroad_01_repair_F  	{ quality = 3; price = 35000; }; common
	
	// IFRIT
	class O_MRAP_02_F { quality = 3; price = 50000; }; Ifrit, needs to be rare.
	
	// STRYDER
	class I_MRAP_03_F { quality = 3; price = 50000; }; Stryder, needs to be rare.

	///////////////
	// APEX CARS //
	///////////////
	
	// PROWLER
	class B_T_LSV_01_unarmed_F { quality = 1; price = 25000; }; common
	
	// Qilin
	class O_T_LSV_02_unarmed_F { quality = 1; price = 25000; }; common

	///////////////
	// MAS CARS //
	//////////////
	
	// UAZ
	class I_mas_cars_UAZ_Unarmed { quality = 1; price = 13500; }; common
	class I_mas_cars_UAZ_Med { quality = 1; price = 13700; }; common
	class O_mas_cars_UAZ_Unarmed { quality = 1; price = 13500; }; common
	class O_mas_cars_UAZ_Med { quality = 1; price = 13700; }; common

	// LAND ROVERS
	class B_mas_cars_LR_Unarmed { quality = 1; price = 14500; }; common
	class B_mas_cars_LR_Med { quality = 1; price = 14700; }; common
	class I_mas_cars_LR_soft_Unarmed { quality = 1; price = 14500; }; common
	class I_mas_cars_LR_soft_Med { quality = 1; price = 14500; }; common

	// Hilux
	class B_mas_cars_Hilux_Unarmed { quality = 1; price = 15000; }; common
	class B_mas_cars_Hilux_Med { quality = 1; price = 15200; }; common

	// HMMWV
	class B_mas_HMMWV_UNA { quality = 2; price = 17000; }; common
	class B_mas_HMMWV_MEV { quality = 2; price = 17200; }; common
	class B_mas_HMMWV_UNA_des { quality = 2; price = 20000; }; common
	class B_mas_HMMWV_MEV_des { quality = 2; price = 20000; }; common

	//////////////////////////
	// CUP VEHICLES UNARMED //
	//////////////////////////
	
	// UAZ
	class CUP_C_UAZ_Unarmed_TK_CIV { quality = 1; price = 12500; }; common
	class CUP_O_UAZ_Unarmed_RU { quality = 1; price = 12500; }; common
	class CUP_I_UAZ_Unarmed_UN { quality = 1; price = 12500; }; common
	class CUP_O_UAZ_Unarmed_TKA { quality = 1; price = 12500; }; common
	class CUP_O_UAZ_Unarmed_CHDKZ { quality = 1; price = 12500; }; common
	class CUP_B_UAZ_Unarmed_ACR { quality = 1; price = 12500; }; common
	class CUP_B_UAZ_Unarmed_CDF { quality = 1; price = 12500; }; common
	class CUP_O_UAZ_Open_CHDKZ { quality = 1; price = 12500; }; common
	class CUP_O_UAZ_Open_RU { quality = 1; price = 12500; }; common
	class CUP_O_UAZ_Open_TKA { quality = 1; price = 12500; }; common
	class CUP_I_UAZ_Open_UN { quality = 1; price = 12500; }; common
	class CUP_B_UAZ_Open_ACR { quality = 1; price = 12500; }; common
	class CUP_B_UAZ_Open_CDF { quality = 1; price = 12500; }; common
	class CUP_C_UAZ_Open_TK_CIV { quality = 1; price = 12500; }; common

	// URAL
	class CUP_C_Ural_Civ_01 { quality = 1; price = 12500; }; common
	class CUP_C_Ural_Civ_02 { quality = 1; price = 12500; }; common
	class CUP_C_Ural_Civ_03 { quality = 1; price = 12500; }; common
	class CUP_C_Ural_Open_Civ_01 { quality = 1; price = 12500; }; common
	class CUP_C_Ural_Open_Civ_02 { quality = 1; price = 12500; }; common
	class CUP_C_Ural_Open_Civ_03 { quality = 1; price = 12500; }; common
	class CUP_O_Ural_TKA { quality = 1; price = 12500; }; common
	class CUP_O_Ural_RU { quality = 1; price = 12500; }; common
	class CUP_I_Ural_UN { quality = 1; price = 12500; }; common
	class CUP_B_Ural_CDF { quality = 1; price = 12500; }; common
	class CUP_O_Ural_CHDKZ { quality = 1; price = 12500; }; common
	class CUP_O_Ural_SLA { quality = 1; price = 12500; }; common
	class CUP_O_Ural_Open_TKA { quality = 1; price = 12500; }; common
	class CUP_B_Ural_Open_CDF { quality = 1; price = 12500; }; common
	class CUP_O_Ural_Open_RU { quality = 1; price = 12500; }; common
	class CUP_O_Ural_Open_CHDKZ { quality = 1; price = 12500; }; common
	class CUP_O_Ural_Open_SLA { quality = 1; price = 12500; }; common
	class CUP_O_Ural_Empty_SLA { quality = 1; price = 12500; }; common
	class CUP_B_Ural_Empty_CDF { quality = 1; price = 12500; }; common
	class CUP_I_Ural_Empty_UN { quality = 1; price = 12500; }; common
	class CUP_O_Ural_Empty_RU { quality = 1; price = 12500; }; common
	class CUP_O_Ural_Empty_CHDKZ { quality = 1; price = 12500; }; common
	class CUP_O_Ural_Empty_TKA { quality = 1; price = 12500; }; common
	class CUP_O_Ural_Repair_SLA { quality = 1; price = 13000; }; common
	class CUP_O_Ural_Repair_TKA { quality = 1; price = 13000; }; common
	class CUP_O_Ural_Repair_CHDKZ { quality = 1; price = 13000; }; common
	class CUP_O_Ural_Repair_RU { quality = 1; price = 13000; }; common
	class CUP_I_Ural_Repair_UN { quality = 1; price = 13000; }; common
	class CUP_B_Ural_Repair_CDF { quality = 1; price = 13000; }; common
	class CUP_B_Ural_Refuel_CDF { quality = 1; price = 15500; }; common
	class CUP_O_Ural_Refuel_RU { quality = 1; price = 15500; }; common
	class CUP_O_Ural_Refuel_CHDKZ { quality = 1; price = 15500; }; common
	class CUP_O_Ural_Refuel_TKA { quality = 1; price = 15500; }; common
	class CUP_O_Ural_Refuel_SLA { quality = 1; price = 15500; }; common

	// LAND ROVER
	class CUP_C_LR_Transport_CTK { quality = 1; price = 12800; }; common
	class CUP_O_LR_Transport_TKA { quality = 1; price = 12800; }; common
	class CUP_O_LR_Transport_TKM { quality = 1; price = 12800; }; common
	class CUP_B_LR_Transport_CZ_W { quality = 1; price = 12800; }; common
	class CUP_B_LR_Transport_CZ_D { quality = 1; price = 12800; }; common
	class CUP_B_LR_Transport_GB_W { quality = 1; price = 12800; }; common
	class CUP_B_LR_Transport_GB_D { quality = 1; price = 12800; }; common
	class CUP_B_LR_Ambulance_CZ_W { quality = 1; price = 12800; }; common
	class CUP_B_LR_Ambulance_CZ_D { quality = 1; price = 12800; }; common
	class CUP_B_LR_Ambulance_GB_W { quality = 1; price = 12800; }; common
	class CUP_B_LR_Ambulance_GB_D { quality = 1; price = 12800; }; common
	class CUP_O_LR_Ambulance_TKA { quality = 1; price = 12800; }; common

	// HMMV
	class CUP_B_HMMWV_Unarmed_USA { quality = 1; price = 13000; }; common
	class CUP_B_HMMWV_Unarmed_USMC { quality = 1; price = 13000; }; common
	class CUP_B_HMMWV_Ambulance_USMC { quality = 1; price = 13000; }; common
	class CUP_B_HMMWV_Ambulance_USA { quality = 1; price = 13000; }; common
	class CUP_B_HMMWV_Ambulance_ACR { quality = 1; price = 13000; }; common
	class CUP_B_HMMWV_Transport_USA { quality = 1; price = 13000; }; common

	// BTR 40
	class CUP_I_M113_Med_RACS { quality = 1; price = 14500; }; common
	class CUP_I_M113_Med_UN { quality = 1; price = 14500; }; common
	
	////////////////
	// MAS TRUCKS //
	////////////////
		///////////////////////////////////////////////////////////////////////////////
	// URAL
	//////////////////////////////////////////////////////////////////////////////
	class I_mas_cars_Ural { quality = 1; price = 23000; }; common
	class I_mas_cars_Ural_open { quality = 2; price = 22800; }; common
	class I_mas_cars_Ural_repair { quality = 2; price = 25500; }; common
	class I_mas_cars_Ural_fuel { quality = 2; price = 24800; }; common
	class O_mas_cars_Ural { quality = 1; price = 23200; }; common
	class O_mas_cars_Ural_open { quality = 2; price = 23000; }; common
	class O_mas_cars_Ural_repair { quality = 2; price = 25700; }; common
	class O_mas_cars_Ural_fuel { quality = 2; price = 25000; }; common

	///////////////////
	// ARMA 3 TRUCKS //
	///////////////////
	
	// VAN
	class B_G_Van_01_transport_F { quality = 1; price = 20000; }; common
	class B_G_Van_01_fuel_F { quality = 1; price = 30000; }; common
	class O_G_Van_01_transport_F { quality = 1; price = 20000; }; common
	class O_G_Van_01_fuel_F { quality = 1; price = 30000; }; common
	class I_G_Van_01_transport_F { quality = 1; price = 20000; }; common
	class I_G_Van_01_fuel_F { quality = 1; price = 30000; }; common

	// HEMMT
	class B_Truck_01_transport_F { quality = 1; price = 20000; }; common
	class B_Truck_01_covered_F { quality = 1; price = 20000; }; common
	class B_Truck_01_mover_F { quality = 1; price = 20000; }; common
	class B_Truck_01_box_F { quality = 1; price = 20000; }; common
	class B_Truck_01_Repair_F { quality = 1; price = 30000; }; common
	class B_Truck_01_ammo_F { quality = 1; price = 60000; }; common
	class B_Truck_01_fuel_F { quality = 1; price = 30000; }; common
	class B_Truck_01_medical_F { quality = 1; price = 20000; }; common

	// ZAMAK
	class O_Truck_02_covered_F { quality = 1; price = 20000; }; common
	class O_Truck_02_transport_F { quality = 1; price = 20000; }; common
	class O_Truck_02_box_F { quality = 1; price = 20000; }; common
	class O_Truck_02_medical_F { quality = 1; price = 20000; }; common
	class O_Truck_02_Ammo_F { quality = 1; price = 60000; }; common
	class O_Truck_02_fuel_F { quality = 1; price = 30000; }; common
	class I_Truck_02_transport_F { quality = 1; price = 20000; }; common
	class I_Truck_02_ammo_F { quality = 1; price = 58000; }; common
	class I_Truck_02_box_F { quality = 1; price = 20000; }; common
	class I_Truck_02_medical_F { quality = 1; price = 20000; }; common
	class I_Truck_02_fuel_F { quality = 1; price = 30000; }; common

	
	// TEMPEST
	class O_Truck_03_transport_F { quality = 1; price = 20000; }; common
	class O_Truck_03_covered_F { quality = 1; price = 20000; }; common
	class O_Truck_03_repair_F { quality = 1; price = 30000; }; common
	class O_Truck_03_ammo_F { quality = 1; price = 60000; }; common
	class O_Truck_03_fuel_F { quality = 1; price = 30000; }; common
	class O_Truck_03_medical_F { quality = 1; price = 18000; }; common
	class O_Truck_03_device_F { quality = 1; price = 33000; }; common

	
	*/
];

//**************************************************************

AVS_useSpawnedPersistentVehiclesRandom = true; // Spawns persistent vehicles completely randomly.
AVS_spawnedPersistentVehiclesRandom =
[
	//["ID Tag", ["Class1", "Class2"], [DamageMin, DamageMax], NumberToPersist],
	// OR
	//["ID Tag", ["Class1", "Class2"], Damage, NumberToPersist]
];
