#include "script_component.hpp"

[{
    // Disable Ambient Animals
    [{time > 0}, {enableEnvironment [false, false];}] call CBA_fnc_waitUntilAndExecute;
}] call CBA_fnc_directCall;

skipTime random 24;

if (isServer) then {
    ["ace_captiveStatusChanged", {
        params ["_unit", "_state", "_reason"];

        if ((getPos _unit) inArea prison_marker_or_trigger_name) then {
            _unit setVariable ["detained", true, true];
        };
    }] call CBA_fnc_addEventHandler;

    [{
        [getPos prison_marker_or_trigger_name, [side player], -10] call ALIVE_fnc_updateSectorHostility;
    }, 3600, []] call CBA_fnc_addPerFrameHandler;
};

[{

    // Environment Control Event Handlers
    [QGVAR(setTime), {
        ["Environment changing..."] call CBA_fnc_notify;

        if (isServer) then {
            skipTime ((_this select 0) - daytime); // Skip time (Server Execution)
        };
        forceWeatherChange;
    }] call CBA_fnc_addEventHandler;

    [QGVAR(setDate), {
        ["Environment changing..."] call CBA_fnc_notify;
        setDate (_this select 0); // Set date (Local Execution)

        if (isServer) then {
            forceWeatherChange;
        };
    }] call CBA_fnc_addEventHandler;

    [QGVAR(setFog), {
        ["Environment changing..."] call CBA_fnc_notify;

        if (isServer) then {
            0 setFog (_this select 0); // Set fog (Server Execution)
            forceWeatherChange;
        };
    }] call CBA_fnc_addEventHandler;

    [QGVAR(setOvercast), {
        ["Environment changing..."] call CBA_fnc_notify;
        0 setOvercast (_this select 0); // Set overcast (Local Execution)

        if (isServer) then {
            forceWeatherChange;
        };
    }] call CBA_fnc_addEventHandler;

    [QGVAR(setRain), {
        ["Environment changing..."] call CBA_fnc_notify;

        if (isServer) then {
            0 setRain (_this select 0); // Set rain (Server Execution)
            forceWeatherChange;
        };
    }] call CBA_fnc_addEventHandler;

    // Medical Event Handlers
    [QGVAR(disableAI), {
        (_this select 0) disableAI "ALL";
    }] call CBA_fnc_addEventHandler;

    [QGVAR(applyDamage), {
        _this call ace_medical_fnc_addDamageToUnit;
    }] call CBA_fnc_addEventHandler;
}] call CBA_fnc_directCall;
