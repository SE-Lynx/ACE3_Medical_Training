# ACE3_Medical_Training
Instructions:
* Place the OPSEC_scripts folder in your mission directory.
* Copy the contents of description.ext to your mission description.ext
* Copy the contents of init.sqf to your mission init.sqf
* In the mission, place down an object named patient_spawn
  * You can place a marker instead but that would require you to modify the scripts.
* In the mission, place down an object with the following in its init:
  * [this] call OPSEC_fnc_Controller;
