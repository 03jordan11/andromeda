/// @description ship behavior

//they need to shoot at random times, but in patterned random times
if alarm[0] == -1 {
	//this will be alert too shoot one round
	alarm[0] = timeBetweenShots
}
x -= fighterSpeed


