#include "..\..\script_component.hpp"
/*
 * Author: JoramD
 * Remove a subject.
 *
 * Arguments:
 * 0: Controller <OBJECT>
 * 1: Stretcher <OBJECT>
 * 2: Subject Name <STRING>
 *
 * Return Value:
 * None
 *
 * Example:
 * [controller, stretcher, stretcherName] call TFWW_Hades_Medical_fnc_removeSubject
 */

params ["_controller", "_stretcher", "_subjectName"];

private _removeSubjecTFWWtion = [
    QGVAR(removeSubjecTFWWtion),
    format ["Remove subject %1", _subjectName],
    "z\ace\addons\arsenal\data\iconclearcontainer.paa",
    {
        (_this select 2) params ["_stretcher"];
        private _medSubject = _stretcher getVariable [format [QGVAR(medSubject_%1), _stretcher], []];
        deleteVehicle _medSubject;
        _stretcher setVariable [format [QGVAR(medSubject_%1), _stretcher], [], true];
    },
    {
        (_this select 2) params ["_stretcher"];
        [_stretcher] call TFWW_Hades_Medical_fnc_checkSubject
    },
    {},
    [_stretcher]
] call ACEFUNC(interact_menu,createAction);

[_controller, 0, ["ACE_MainActions", QGVAR(removeMainAction)], _removeSubjecTFWWtion] call ACEFUNC(interact_menu,addActionToObject);
