class CfgFunctions {
    #include "furniture\func.hpp"
    #include "scripts\Reeveli_fnc\Reevelis_fnc.hpp"	
    class ADDON {
        tag = QUOTE(ADDON);
        class functions {
            file = "functions";
            class environmentControl;
            class initMOUT;
            class range40mmTargetGroups;
            class rangeMachineGunTargetGroups;
            class rangeMarksmanTargetGroups;
            class resetDamagedObjects;
        };
    };
    class DOUBLES(ADDON,Medical) {
        class functions {
            file = "functions\medical";
            class init;
            class createSubject;
            class removeSubject;
            class checkSubject;
            class specific_bodyPartActions;
            class specific_projectileTypeActions;
            class specific_severityActions;
            class applyRandomDamage;
            class instructorDisplay;
        };
    };
};
