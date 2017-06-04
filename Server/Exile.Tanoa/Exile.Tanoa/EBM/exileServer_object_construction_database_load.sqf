
/**
 * ExileServer_object_construction_database_load
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_constructionID","_data","_position","_vectorDirection","_vectorUp","_constructionObject","_damageLevel","_public","_pinCode"];
_constructionID = _this;
_data = format ["loadConstruction:%1", _constructionID] call ExileServer_system_database_query_selectSingle;
_position = [_data select 4, _data select 5, _data select 6];
_vectorDirection = [_data select 7, _data select 8, _data select 9];
_vectorUp = [_data select 10, _data select 11, _data select 12];
_constructionObject = createVehicle [(_data select 1), _position, [], 0, "CAN_COLLIDE"];
_constructionObject setPosATL _position;
_constructionObject setVectorDirAndUp [_vectorDirection, _vectorUp];
_constructionObject setVariable ["ExileDatabaseID", _data select 0];
_constructionObject setVariable ["ExileOwnerUID", (_data select 2)];
_constructionObject setVariable ["ExileIsPersistent", true];
_constructionObject setVariable ["ExileTerritoryID", (_data select 15)];
_damageLevel = (_data select 17);
_public = _damageLevel > 0;
_constructionObject setVariable ["ExileConstructionDamage",_damageLevel,_public];
if(_public)then
{
	_constructionObject call ExileServer_util_setDamageTexture;
};
_pinCode = _data select 14;
if !(_pinCode isEqualTo "000000") then
{
	_constructionObject setVariable ["ExileAccessCode", _pinCode];
	_constructionObject setVariable ["ExileIsLocked", (_data select 13), true];
};

// 2017-03-16 + TEMPORARY WORKAROUND UNTIL EXILE UPDATE
//if (getNumber(configFile >> "CfgVehicles" >> (_data select 1) >> "exileRequiresSimulation") isEqualTo 1) then
//{
//	_constructionObject enableSimulationGlobal true;
//	_constructionObject call ExileServer_system_simulationMonitor_addVehicle;
//}
//else 
//{
//	_constructionObject enableSimulationGlobal false;
//};


if (typeOf _constructionObject in [
"Exile_Construction_ConcreteDoor_Static",
"Exile_Construction_ConcreteGate_Static",
 "Exile_Construction_WoodGate_Static",
 "Exile_Construction_WoodDoor_Static",
 "Exile_Construction_ConcreteWindowHatch_Static",
 "Exile_Construction_WoodGate_Reinforced_Static",
 "Exile_Construction_WoodDoor_Reinforced_Static",
 "Exile_Construction_ConcreteFloorHatch_Static",
 "Land_HBarrier_1_F",
		"Land_HBarrier_3_F",
		"Land_HBarrier_5_F",
		"Land_BagBunker_Tower_F",
		"CamoNet_OPFOR_open_F",
		"CamoNet_INDP_open_F",
		"CamoNet_BLUFOR_open_F",
		///////////////////////// V0.0.2
		"Land_CncBarrier_F",
		"Land_Stone_4m_F",
		"Land_Stone_Gate_F",
		"PierLadder_F",
		"Land_WaterCooler_01_new_F",
		///////////////////////// V0.0.3
		"Land_Pallet_MilBoxes_F",
		"Land_Cargo20_military_green_F",
		"Land_BagFence_Corner_F",
		"Land_BagFence_Long_F",
		"Land_HBarrierTower_F",
		"Land_Metal_wooden_rack_F",
		"Land_BagBunker_Small_F",
		"Land_Bunker_F",
		"Land_HBarrierWall_corner_F",
		"Land_HBarrierWall6_F",
		"Land_HBarrierWall4_F",
		"Land_RampConcrete_F",
		///////////////////////// V0.0.4
		"Land_Wall_IndCnc_4_F",
		"Land_City2_4m_F",
		"Land_City2_8m_F",
		"Land_HelipadCivil_F",
		"Land_Rack_F",
		///////////////////////// V0.1.0
		"Land_City_Gate_F",
		"Land_BarGate_F",
		"Land_Icebox_F",
		"Land_Sign_WarningMilitaryArea_F",
		"Land_Mil_WallBig_4m_F",
		"Land_Cargo_Patrol_V2_F",
		///////////////////////// V0.1.1
		"Land_Pier_small_F",
		"Land_Wall_Tin_4",
		///////////////////////// V0.1.2
		"Land_Tank_rust_F",
		"Land_ShelvesMetal_F",
		"Land_Cargo_Tower_V2_F",
		"Land_FuelStation_Feed_F",
		"Land_BagBunker_Large_F",
		"ShootingPos_F",
		///////////////////////// V0.1.3
		"Land_cargo_house_slum_F",
		"Land_Cargo40_light_green_F",
		"Land_Cargo_House_V2_F",
		"Land_LampHalogen_F",
		///////////////////////// V0.1.4
		"Land_LampAirport_F",
		"Land_CncShelter_F",
		"Land_Wall_IndCnc_2deco_F",
		"Land_CncWall4_F",
		"Land_FuelStation_Shed_F",
		"Land_Shed_Small_F",		
		"Land_Razorwire_F",
		///////////////////////// V0.1.5
		"Land_u_Addon_01_V1_F", //brokenshed
		"Land_Cargo20_sand_F",
		"Land_GH_Stairs_F",
		"Land_i_Garage_V2_F",
		"Land_GH_Platform_F",
		"Land_TentDome_F",
		"Land_TentHangar_V1_F",
		///////////////////////// V0.1.6
		"Land_CncWall1_F",
		"Land_CncBarrierMedium_F",
		"Land_Crash_barrier_F",
		"Land_Shed_Big_F",
		"Land_TouristShelter_01_F",
		"Land_Water_source_F",
		"Land_Sign_WarningMilitaryVehicles_F",
		"Land_Sign_WarningMilAreaSmall_F",
		"Land_Concrete_SmallWall_8m_F",
		"Land_Concrete_SmallWall_4m_F",
		///////////////////////// V0.1.7
		"Land_PortableLight_double_F",
		"Land_Radar_Small_F",
		"Land_Cargo_addon02_V2_F", //Slumplane
		"Land_TableDesk_F",
		"Land_ToiletBox_F",
		"Land_Pier_Box_F",
		///////////////////////// V0.1.8
		"Land_ChairWood_F",
		"BlockConcrete_F",
		"Land_CargoBox_V1_F",
		"Land_IndFnc_3_F",
		"Land_IndFnc_9_F",
		"Land_Sea_Wall_F",
		"Land_i_Addon_03_V1_F",
		"Land_i_Addon_03mid_V1_F",
		"Land_LampStreet_F",
		///////////////////////// V0.1.9
		"Land_Dome_Big_F",
		"Land_Hangar_F",
		"Land_Metal_Shed_F",
		"Land_spp_Tower_F",
		"Land_Sun_chair_F",
		"Land_Sunshade_04_F",
		"Land_LampShabby_F",
		///////////////////////// V0.2.0
		"Land_Airport_Tower_F",
		"Land_i_Barracks_V1_F",
		"Land_BeachBooth_01_F",
		"Land_Castle_01_tower_F",
		"Land_Sign_WarningUnexplodedAmmo_F",
		"Land_TTowerSmall_1_F",
		///////////////////////// V0.2.1 Hotfix
		///////////////////////// V0.2.2
		"Exile_Plant_GreenBush",
		"Land_nav_pier_m_F",
		"Land_SharpStone_01_F",
		"Land_SharpStone_02_F",
		"Land_Sleeping_bag_F",
		"Land_Small_Stone_02_F",
		"Land_SolarPanel_2_F",
		"Land_spp_Panel_F",
		///////////////////////// V0.2.3
		"Land_CampingChair_V2_F",
		"Land_CampingChair_V1_F",
		"Land_Camping_Light_F",
		"Land_CampingTable_F",
		"MapBoard_altis_F",
		"Land_Pavement_narrow_F",
		"Land_Pavement_narrow_corner_F",
		"Land_Pavement_wide_F",
		"Land_Pavement_wide_corner_F",
		///////////////////////// V0.2.4
		"Exile_ConcreteMixer",
		"Flag_CSAT_F",
		"Land_GarbageContainer_closed_F",
		"Land_Metal_rack_F",
		"Land_Sink_F",
		///////////////////////// V0.2.5
		"Land_Atm_02_F",
		///////////////////////// V0.2.6
		"Land_BagBunker_01_small_green_F",
		"Land_HBarrier_01_line_3_green_F",
		"Land_HBarrier_01_line_5_green_F",
		"Land_HBarrier_01_tower_green_F", //name changed
		"Land_HBarrier_01_big_tower_green_F",//V0.2.8
		"Land_Bagbunker_01_large_green_F",//V0.2.8
		"Land_Bagfence_01_short_green_F",//V0.2.8
		"Land_Bagfence_01_long_green_F",//V0.2.8
		"Land_IRMaskingCover_02_F",//V0.2.8
		"Land_IRMaskingCover_01_F",//V0.2.8
		"Land_Ammobox_rounds_F",//V0.2.8
		"Land_Airport_01_hangar_F",//V0.2.8
		///////////////////////// V0.2.7
		"Land_i_House_Small_03_V1_F",//Bungalow
		"Land_i_House_Big_01_V2_F",
		"Land_PlasticCase_01_medium_F",
		"Land_Research_HQ_F",
		"Land_Research_house_V1_F",
		///////////////////////// V0.2.8 - Some Apex buildings
		"Land_Suitcase_F",
		"B_Slingload_01_fuel_F",
		"B_Slingload_01_Ammo_F",
		///////////////////////// V0.3.1 
		"Land_FlatTV_01_F", //Thank you Kurewe for providing me those codes from here :) 
		"Land_ChairPlastic_F",
		"Land_GamingSet_01_console_F",
		"Land_GamingSet_01_controller_F",
		"Land_GymBench_01_F",
		"Land_GymRack_03_F",
		"Land_OfficeCabinet_01_F",
		"Land_OfficeChair_01_F",
		"Land_PCSet_01_case_F",
		"Land_PCSet_01_keyboard_F",
		"Land_PCSet_01_mouse_F",
		"Land_PCSet_01_screen_F",
		"Land_Printer_01_F",
		"Land_RattanChair_01_F",
		"Land_RattanTable_01_F",
		"Land_Sleeping_bag_blue_F",
		"Land_Sleeping_bag_brown_F",
		"Land_Trophy_01_bronze_F",
		"Land_Trophy_01_gold_F",
		"Land_Trophy_01_silver_F",
		"Land_Sun_chair_green_F",
		"Land_Sunshade_01_F",
		"Land_Sunshade_02_F",
		"Land_Sunshade_03_F",
		"Land_Sunshade_F",
		"Land_TablePlastic_01_F",
		"Land_WoodenTable_large_F",
		"Land_WoodenTable_small_F",
		"OfficeTable_01_new_F",
		"Land_DieselGroundPowerUnit_01_F",
		"Land_EngineCrane_01_F",
		"Land_PalletTrolley_01_yellow_F",
		"Land_PressureWasher_01_F",
		"Land_WeldingTrolley_01_F",
		"Land_Workbench_01_F",
		"ArrowDesk_L_F",
		"ArrowDesk_R_F",
		"PlasticBarrier_02_grey_F",
		"PlasticBarrier_02_yellow_F",
		"PlasticBarrier_03_blue_F",
		"PlasticBarrier_03_orange_F",
		"RoadBarrier_F",
		"RoadBarrier_small_F",
		"RoadCone_F",
		"RoadCone_L_F",
		"TapeSign_F",
		"Land_Target_Dueling_01_F",
		"Land_Target_Oval_F",
		"TargetP_Inf_F",
		"Fridge_01_closed_F",
		"Land_MetalCase_01_large_F",
		"Land_Microwave_01_F",
		"Land_ShelvesWooden_F",
		"Land_ShelvesWooden_blue_F",
		"Land_ShelvesWooden_khaki_F",
		"Land_ToolTrolley_01_F",
		"Land_ToolTrolley_02_F",
		"Land_Sign_Mines_F",
		"Land_PortableHelipadLight_01_F",
		"PortableHelipadLight_01_blue_F",
		"PortableHelipadLight_01_green_F",
		"PortableHelipadLight_01_red_F",
		"PortableHelipadLight_01_white_F",
		"PortableHelipadLight_01_yellow_F", //Thank you Kurewe for providing me those codes until here :) 
		"Land_GamingSet_01_powerSupply_F",
		"Land_GamingSet_01_camera_F",
		"WaterPump_01_forest_F",
		"WaterPump_01_sand_F",
		"Land_TripodScreen_01_large_F",
		"Land_TripodScreen_01_dual_v2_F",
		"Land_TripodScreen_01_dual_v1_F",
		"Target_Swivel_01_ground_F",
		"TargetP_Inf_Acc2_F",
		"TargetBootcampHuman_F",
		"Target_F",
		"Land_SatelliteAntenna_01_F",
		"Land_Projector_01_F",
		"Land_PortableGenerator_01_F",
		"Land_Obstacle_Ramp_F",
		"MetalBarrel_burning_F"
 ]) then
{
    _constructionObject enableSimulationGlobal true;
    _constructionObject call ExileServer_system_simulationMonitor_addVehicle;
}
else 
{
	_constructionObject enableSimulationGlobal false;
};
// 2017-03-16 - TEMPORARY WORKAROUND UNTIL EXILE UPDATE

_constructionObject setVelocity [0, 0, 0];
_constructionObject setPosATL _position;
_constructionObject setVelocity [0, 0, 0];
_constructionObject setVectorDirAndUp [_vectorDirection, _vectorUp];
_constructionObject setVelocity [0, 0, 0];
_constructionObject