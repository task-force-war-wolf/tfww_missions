// class Extended_Init_EventHandlers {
// 	class Man {
// 		init = "_this call (compile preprocessFileLineNumbers 'inv_script.sqf')";
// 	};
// };

class Extended_PreInit_EventHandlers {
    class tinter_furniture_pre_init {
        init = "call compile preprocessFileLineNumbers 'furniture\XEH_preInit.sqf'";
    };
};
