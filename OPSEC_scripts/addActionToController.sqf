this addAction ["Spawn Patient (Mild Injuries)", {execVM "OPSEC_scripts\onePatientMild.sqf"}]; 
this addAction ["Spawn Patient (Moderate Injuries)", {execVM "OPSEC_scripts\onePatientModerate.sqf"}]; 
this addAction ["Spawn Patient (Severe Injuries)", {execVM "OPSEC_scripts\onePatientSevere.sqf"}]; 
this addAction ["Delete Patients", {execVM "OPSEC_scripts\removePatient.sqf"}];