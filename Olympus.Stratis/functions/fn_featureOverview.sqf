#include "..\script_component.hpp"
/*
 * Author: Kresky, Jonpas, JoramD
 * Adds feature overview.
 * Call from initPlayerLocal.sqf.
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player] call FUNC(featureOverview);
 */

params ["_player"];

_player createDiarySubject ["features", "Features"];

_player createDiaryRecord ["features", ["Environment Controller", "
    <br/>The main base and some courses have an additional laptop to control the environment.
"]];

_player createDiaryRecord ["features", ["Vehicle Spawners", "
    <br/><img image='x\TFWWr\addons\images\Hades\feature\vehicleSpawn.jpg' width='300' height='350'/>
    <br/>The main base has a <marker name = 'TFWW_Hades_vehicleSpawnerMarker'>vehicle spawner</marker> that allows you to spawn and delete various ground vehicles.
    <br/>Additionally there is a maritime vehicle spawner on the dock.
    <br/>The airfield also has 2 spawners for aircraft; they are functionally the same.
"]];

_player createDiaryRecord ["features", ["Chat Commands", "
    <br/><font color='#E3D310'>#TFWW-heal:</font color>
    <br/>Type `#TFWW-heal` in chat to heal yourself.
    <br/>If you want to heal someone else, type `#TFWW-heal John Doe`.
    <br/>
    <br/><font color='#E3D310'>#TFWW-fix:</font color>
    <br/>Type `#TFWW-fix` in chat to repair, refuel and rearm the vehicle you are looking at.
    <br/>
    <br/><font color='#E3D310'>#TFWW-cleanup:</font color>
    <br/>Type `#TFWW-cleanup` in chat to delete any items on the ground in a 10m range.
    <br/>To extend the cleanup range type `#TFWW-cleanup <NUMBER>` in chat (number in meters between 1 and 100 meters).
    <br/>
    <br/><font color='#E3D310'>#TFWW-grenade-reset:</font color>
    <br/>Type `#TFWW-grenade-reset` in chat to reset the grenade building.
"]];

_player createDiaryRecord ["features", ["Arsenals", "
    <br/><img image='\A3\EditorPreviews_F_Orange\Data\CfgVehicles\Land_PlasticCase_01_large_gray_F.jpg' width='228' height='128'/>
    <br/><font color='#E3D310'>Personal Arsenal:</font color>
    <br/>Will only have items you can buy in the Armory (also has full arsenal).
    <br/>
    <br/><img image='\A3\EditorPreviews_F_Exp\Data\CfgVehicles\Box_NATO_Equip_F.jpg' width='228' height='128'/>
    <br/><font color='#E3D310'>Equipment Arsenal:</font color>
    <br/>Will have items applicable to the course it is at (also has full arsenal).
    <br/>
    <br/><img image='\A3\EditorPreviews_F_Enoch\Data\CfgVehicles\Land_PlasticCase_01_large_black_F.jpg' width='228' height='128'/>
    <br/><font color='#E3D310'>Full Arsenal:</font color>
    <br/>Will have every item available in the game.
"]];

_player createDiaryRecord ["features", ["Teleporters", "
    <br/><img image='x\TFWWr\addons\images\Hades\feature\teleporter.jpg' width='300' height='350'/>
    <br/>There are teleporters in various locations around Hades. It will always have a personal arsenal.
"]];
