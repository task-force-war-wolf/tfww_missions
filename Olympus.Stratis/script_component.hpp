#define PREFIX TFWW
#define COMPONENT Hades

// Version
#define MAJOR 3
#define MINOR 8
#define PATCHLVL 1

// Map
#define MAP Stratis

#define DEBUG_SYNCHRONOUS
//#define DEBUG_MODE_FULL

#include "\x\cba\addons\main\script_macros_mission.hpp"

#define PATHTOTFWWRF(var1,var2) PATHTOF_SYS(\x\TFWWr\addons,var1,var2)
#define QPATHTOTFWWRF(var1,var2) QUOTE(PATHTOTFWWRF(var1,var2))

#define TFWWFUNC(var1,var2) TRIPLES(DOUBLES(TFWW,var1),fnc,var2)

#define TFWWGVAR(var1,var2) TRIPLES(TFWW,var1,var2)
#define QTFWWGVAR(var1,var2) QUOTE(TFWWGVAR(var1,var2))

// ACE3
#define ACEFUNC(var1,var2) TRIPLES(DOUBLES(ace,var1),fnc,var2)

// Enable Debug Console and similar tools for given admins
// Primarily used in description.ext (debug console) which gets resolved locally on clients where
// userconfig is not available, so must have it hardcoded to take effect
#define DEBUG_ADMINS \
    "76561198048995566", /* Jonpas */ \
    "76561198085500182", /* Mike */ \
    "76561198040879834", /* JoramD */ \
    "76561197993041837"  /* Phil */
