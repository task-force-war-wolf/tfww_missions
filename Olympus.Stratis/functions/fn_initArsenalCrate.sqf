#include "..\script_component.hpp"
/*
 * Author: JoramD, Jonpas, Kresky
 * Initializes 2 ACE Arsenals on an object (1 full, 1 partial) and selects an item array.
 * AVAILABLE OPTIONS: 40mm, demolitions, grenade, launcher, machineGun, marksman, medical, rangePistol, rangeRifle, weaponsHandling, full, personal.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Chosen item array <STRING>
 *
 * Return Value:
 * None
 *
 * Example:
 * [this, "rangeRifle"] call TFWW_Hades_fnc_initArsenalCrate;
 */

private _default = [];

private _40mm = [
    "ACE_fieldDressing",
    "ACE_EarPlugs",
    "V_Rangemaster_belt",
    "arifle_Mk20_GL_plain_F",
    "CUP_arifle_L85A2_GL",
    "hlc_rifle_m4m203",
    "CUP_arifle_AK101_GL",
    "cup_optic_elcan_specterdr_black",
    "cup_optic_eotech553_black",
    "CUP_1Rnd_HE_GP25_M",
    "CUP_1Rnd_SMOKE_GP25_M",
    "CUP_1Rnd_SmokeRed_GP25_M",
    "CUP_IlumFlareWhite_GP25_M",
    "CUP_IlumFlareRed_GP25_M",
    "CUP_IlumFlareGreen_GP25_M",
    "1Rnd_HE_Grenade_shell",
    "1Rnd_SmokeRed_Grenade_shell",
    "1Rnd_Smoke_Grenade_shell",
    "UGL_FlareGreen_F",
    "ACE_40mm_Flare_ir",
    "CUP_1Rnd_StarFlare_Green_M203",
    "CUP_1Rnd_StarFlare_Red_M203",
    "TFWWs_Backpack_AssaultExpanded_Black",
    "NVGoggles_OPFOR"
];

private _rangePistol = [
    "ACE_fieldDressing",
    "ACE_EarPlugs",
    "V_Rangemaster_belt",
    "TFWWs_Walther_P99",
    "TFWWgt_17Rnd_9x19mm_Walther_Ball"
];

private _rangeRifle = [
    "ACE_fieldDressing",
    "ACE_EarPlugs",
    "V_Rangemaster_belt",
    "CUP_arifle_M4A1_black",
    "TFWWgt_30Rnd_556x45_Ball_EMAG"
];

private _engineer = [
    "ACE_fieldDressing",
    "ACE_EarPlugs",
    "TFWWs_Backpack_Carryall_DarkBlack",
    "H_HelmetSpecB",
    "TFWWs_Vest_PlateCarrier_Green",
    "ACE_DefusalKit",
    "ACE_M26_Clacker",
    "ACE_Clacker",
    "ACE_wirecutter",
    "DemoCharge_Remote_Mag",
    "SatchelCharge_Remote_Mag",
    "AMP_Breaching_Charge_Mag",
    "ToolKit",
    "I_UGV_02_Demining_backpack_F",
    "ACE_UAVBattery",
    "I_UavTerminal"
];

private _grenade = [
    "ACE_fieldDressing",
    "ACE_EarPlugs",
    "V_Rangemaster_belt",
    "TFWWs_Backpack_AssaultExpanded_Black",
    "HandGrenade"
];

private _launcher = [
    "ACE_fieldDressing",
    "ACE_EarPlugs",
    "CUP_launch_M136",
    "CUP_launch_RPG7V",
    "cup_optic_pgo7v3",
    "CUP_OG7_M",
    "CUP_PG7VR_M",
    "CUP_PG7VM_M",
    "launch_MRAWS_green_rail_F",
    "launch_MRAWS_green_F",
    "launch_NLAW_F",
    "launch_RPG32_green_F",
    "MRAWS_HEAT_F",
    "TFWWs_Backpack_Carryall_DarkBlack",
    "RPG32_F"
];

private _medical = [
    "ACE_EarPlugs",
    "TFWWs_Backpack_Kitbag_Medic_Black",
    "TFWWs_Backpack_Kitbag_Medic_Coyote",
    "TFWWs_Backpack_Kitbag_Medic_Digital",
    "TFWWs_Backpack_Kitbag_Medic_Green",
    "TFWWs_Backpack_Kitbag_Medic_MTP",
    "TFWWs_Backpack_Kitbag_Medic_Sage",
    "TFWWs_Backpack_Kitbag_Medic_Tan",
    "TFWWs_Backpack_Kitbag_Medic_White",
    "ACE_adenosine",
    "ACE_atropine",
    "ACE_fieldDressing",
    "ACE_elasticBandage",
    "ACE_quikclot",
    "ACE_bloodIV",
    "ACE_bloodIV_250",
    "ACE_bloodIV_500",
    "ACE_bodyBag",
    "ACE_epinephrine",
    "ACE_morphine",
    "ACE_packingBandage",
    "TFWW_medical_painkillers",
    "ACE_personalAidKit",
    "ACE_plasmaIV",
    "ACE_plasmaIV_250",
    "ACE_plasmaIV_500",
    "ACE_salineIV",
    "ACE_salineIV_250",
    "ACE_salineIV_500",
    "ACE_splint",
    "ACE_surgicalKit",
    "ACE_tourniquet"
];

private _machineGun = [
    "ACE_fieldDressing",
    "ACE_EarPlugs",
    "V_Rangemaster_belt",
    "hlc_m249_pip1",
    "TFWWgt_200Rnd_556x45_Ball_Belt",
    "TFWWgt_200Rnd_556x45_Ball_Tracer_Belt",
    "cup_optic_elcanm145",
    "TFWWs_Backpack_Carryall_DarkBlack"
];

private _marksman = [
    "ACE_fieldDressing",
    "ACE_EarPlugs",
    "arifle_MXM_Black_F",
    "TFWWgt_30Rnd_65x39_Ball_MX_Black",
    "optic_hamr",
    "srifle_DMR_03_F",
    "TFWWgt_20Rnd_762x51_Ball",
    "optic_mrco",
    "ace_optic_mrco_2d",
    "TFWWs_EBR_Black_F",
    "cup_optic_elcan",
    "V_Rangemaster_belt",
    "ACE_Vector",
    "ACE_RangeCard"
];

private _weaponsHandling = [
    "ACE_fieldDressing",
    "ACE_EarPlugs",
    "V_Rangemaster_belt",
    "CUP_arifle_M4A1_black",
    "TFWWgt_30Rnd_556x45_Ball_EMAG",
    "TFWWs_Walther_P99",
    "TFWWgt_17Rnd_9x19mm_Walther_Ball"
];

// Init stuff
params ["_crate", "_type"];

[_crate, -1] call ace_cargo_fnc_setSize;

// Check which array to use
private _chosen = [];
switch (_type) do {
    case "40mm": { _chosen = _40mm; };
    case "marksman": { _chosen = _marksman; };
    case "rangePistol": { _chosen = _rangePistol; };
    case "rangeRifle": { _chosen = _rangeRifle; };
    case "engineer": { _chosen = _engineer; };
    case "grenade": { _chosen = _grenade; };
    case "launcher": { _chosen = _launcher; };
    case "machineGun": { _chosen = _machineGun; };
    case "medical": { _chosen = _medical; };
    case "weaponsHandling": { _chosen = _weaponsHandling; };
    default { _chosen = _default; };
};

// Add virtual items
[_crate, _chosen] call ace_arsenal_fnc_addVirtualItems;

// Add arsenal option if chosen is not default
if !(_chosen isEqualTo []) then {
    private _action = [
        QGVAR(arsenal),
        "Arsenal",
        "",
        {
            [_target, _player, false] call ACEFUNC(arsenal,openBox);
        },
        {true}
    ] call ACEFUNC(interact_menu,createAction);

    [_crate, 0, ["ACE_MainActions"], _Action] call ACEFUNC(interact_menu,addActionToObject);
} else {
   if !(_type == "full" || _type == "personal") then {
       ERROR_MSG_1("Incorrect item array (%1)",_type);
   };
};

// Add full arsenal option
private _fullAction = [
    QGVAR(fullArsenal),
    "Full Arsenal",
    "",
    {
        [_target, _player, true] call ACEFUNC(arsenal,openBox);
    },
    {true}
] call ACEFUNC(interact_menu,createAction);

[_crate, 0, ["ACE_MainActions"], _fullAction] call ACEFUNC(interact_menu,addActionToObject);

// Disable carrying and dragging
[_crate, false] call ace_dragging_fnc_setCarryable;
[_crate, false] call ace_dragging_fnc_setDraggable;

// Add personal arsenal option
if (_type == "personal") then {
    [player, _crate] call TFWW_Hades_fnc_personalArsenal
};
