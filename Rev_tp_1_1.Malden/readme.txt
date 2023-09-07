Reeveli's teleportation system

Required addons: CBA
Optional addons: ZEN

Custom settings can be adjusted from Addon options >> Reeveli's teleportation system

See the attached example mission for pratical demonstration.

Teleportation poijnt can be added via two ways:
1) In the mission editor / scripting via using Rev_tp_fnc_addPoint -function

Example:

[this,"My example teleportation point",west] call Rev_tp_fnc_addPoint

Placing the code above in an object's init field will create a taleportation point tied to it.

Arguments:
0: The actual object being added as a teleportation point and to which the teleportation menu-action will be added
1: The display name by whch this particurlar teleportation point will be shown in the list
2: Which side can utilise this teleportation point. A singlr point can only ever be tied to one side (west, east, independent, civilian, sideLogic)


2) New teleportation point can be added by Curators while the game is on going using the cutoms module Reeveli's Teleportation system >> Add teleport point
Zeus Enchnaced mod is required for this functionality

The other custom Zeus module allows curator to check currently active teleportation FOR HIS SIDE


The teleportation point will be removed from an object if it is killed or deleted