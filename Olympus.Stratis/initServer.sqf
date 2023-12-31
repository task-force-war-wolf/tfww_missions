#include "script_component.hpp"

[{
    //Removes corpse after disconnect.
    addMissionEventHandler ["HandleDisconnect", {
        deleteVehicle (_this select 0);
    }];

    GVAR(spawnedVehiclesNamespace) = true call CBA_fnc_createNamespace;
    publicVariable QGVAR(spawnedVehiclesNamespace);
}] call CBA_fnc_directCall;

// Prevent Targets being destroyed
{
    _x allowDamage false;
} forEach (allMissionObjects "TargetBase");
