private "_this";
_this = _this select 0;

if ((side _this == west) and (!isPlayer _this)) then {
	{ _this  setBehaviour "COMBAT"; } forEach [1, 2, 3, 4, 5];
};

if ((side _this == east) and (!isPlayer _this)) then {
	{ _this  setBehaviour "COMBAT"; } forEach [1, 2, 3, 4, 5];
};