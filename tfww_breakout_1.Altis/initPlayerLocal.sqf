#include "script_component.hpp"
if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};


// Fixing warning spam from ambientLife. Also, if I hear "Look a bunny!" one more bloody time...
sleep 0.2;
enableEnvironment [false, true];

////////////////////////////////////////////////////////////////////////////////
// kill the rabbits 													//
////////////////////////////////////////////////////////////////////////////////

[{time > 0}, {enableEnvironment [false, true];}] call CBA_fnc_waitUntilAndExecute;

////////////////////////////////////////////////////////////////////////////////
// Shut the hell up  - Mute Orders and Reports						 //
////////////////////////////////////////////////////////////////////////////////

{_x setSpeaker "NoVoice"} forEach playableUnits;

enableSentences false;

