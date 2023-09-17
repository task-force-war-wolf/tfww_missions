#include "..\..\script_component.hpp"
/*
 * Author: JoramD
 * Create body part interactions.
 *
 * Arguments:
 * 0: Controller <OBJECT>
 * 1: Stretcher <OBJECT>
 *
 * Return Value:
 * Actions <ARRAY>
 *
 * Example:
 * [controller, stretcher] call TFWW_Hades_Medical_fnc_specific_bodyParTFWWtions
 */

params ["_controller", "_stretcher"];

private _bodyParts = [
    //["bodyPart", "bodyPartName"]
    ["Head", "Head"],
    ["Body", "Body"],
    ["RightArm", "Right Arm"],
    ["LeftArm", "Left Arm"],
    ["RightLeg", "Right Leg"],
    ["LeftLeg", "Left Leg"]
];

private _actions = [];
{
    _x params ["_bodyPart", "_bodyPartName"];

    private _bodyParTFWWtion = [
        format[QGVAR(bodyParTFWWtion_%1), _bodyPart],
        _bodyPartName,
        "",
        {},
        {true},
        {(_this select 2) call TFWW_Hades_Medical_fnc_specific_projectileTypeActions},
        [_controller, _stretcher, _bodyPart]
    ] call ACEFUNC(interact_menu,createAction);

    _actions pushBack [_bodyParTFWWtion, [], _controller];
} forEach _bodyParts;

_actions
