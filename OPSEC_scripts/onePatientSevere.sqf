_cnt = count units singlePatientSevere;
if (_cnt < 1) then {
	"B_Soldier_VR_F" createUnit [(getPos patient_spawn), singlePatientSevere, "this disableAI 'ALL', singlePatientSevere1 = this"];
	for [{_i = 0}, {_i < 6}, {_i = _i + 1}] do {
		_randomDamage = selectRandom ["Body", "Head", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
		_randomHP = selectRandom [0.5, 0.6, 0.7];
		["ace_medical_woundReceived", [singlePatientSevere1, _randomDamage, _randomHP, singlePatientSevere1, "bullet", [1,1]], singlePatientSevere1] call CBA_fnc_targetEvent;
	};

	/*_randomCardiacArrest = selectRandom [0,1];
	switch (_randomCardiacArrest) do {
		case 0: {};
		case 1: { [singlePatientSevere1, true] call ace_medical_status_fnc_setCardiacArrestState; };
		default {};
	};*/
} else {
	systemChat "Please remove patients before spawning new ones";
};