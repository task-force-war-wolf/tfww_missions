#include "script_component.hpp"
if (isServer) then {
    ["ace_captiveStatusChanged", {
        params ["_unit", "_state", "_reason"];

        if ((getPos _unit) inArea _prison) then {
            _unit setVariable ["detained", true, true];
        };
    }] call CBA_fnc_addEventHandler;

    [{
        [getPos _prison, [side player], -10] call ALIVE_fnc_updateSectorHostility;
    }, 3600, []] call CBA_fnc_addPerFrameHandler;
};


["acex_fortify_objectPlaced", {
    [ALiVE_SYS_LOGISTICS, "updateObject", [(_this select 2)]] call ALIVE_fnc_logistics;
    }] call CBA_fnc_addEventHandler;

["acex_fortify_objectDeleted", {
    [ALiVE_SYS_LOGISTICS, "removeObject", [(_this select 2)]] call ALIVE_fnc_logistics;
    }] call CBA_fnc_addEventHandler;