_cnt = count units singlePatientMild;
if (_cnt < 1) then {
	"B_Soldier_VR_F" createUnit [(getPos patient_spawn), singlePatientMild, "this disableAI 'ALL', singlePatientMild1 = this"];
	for [{_i = 0}, {_i < 6}, {_i = _i + 1}] do {
		_randomDamage = selectRandom ["Body", "Head", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
		_randomHP = selectRandom [0.2, 0.3, 0.4];
		["ace_medical_woundReceived", [singlePatientMild1, _randomDamage, _randomHP, singlePatientMild1, "bullet", [1,1]], singlePatientMild1] call CBA_fnc_targetEvent;
	};

	/*_randomCardiacArrest = selectRandom [0,1];
	switch (_randomCardiacArrest) do {
		case 0: {};
		case 1: { [singlePatientMild1, true] call ace_medical_status_fnc_setCardiacArrestState; };
		default {};
	};*/
} else {
	systemChat "Please remove patients before spawning new ones";
};