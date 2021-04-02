_cnt = count units singlePatientModerate;
if (_cnt < 1) then {
	"B_Soldier_VR_F" createUnit [(getPos patient_spawn), singlePatientModerate, "this disableAI 'ALL', singlePatientModerate1 = this"];
	for [{_i = 0}, {_i < 6}, {_i = _i + 1}] do {
		_randomDamage = selectRandom ["Body", "Head", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
		_randomHP = selectRandom [0.4, 0.5, 0.6];
		["ace_medical_woundReceived", [singlePatientModerate1, _randomDamage, _randomHP, singlePatientModerate1, "bullet", [1,1]], singlePatientModerate1] call CBA_fnc_targetEvent;
	};

	/*_randomCardiacArrest = selectRandom [0,1];
	switch (_randomCardiacArrest) do {
		case 0: {};
		case 1: { [singlePatientModerate1, true] call ace_medical_status_fnc_setCardiacArrestState; };
		default {};
	};*/
} else {
	systemChat "Please remove patients before spawning new ones";
};