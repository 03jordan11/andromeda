/// @description Initialize music

// play music based on room
bkgSoundId = audio_play_sound(space,1,true);
firstText = "Captain's Log 12,334\n\nTrip pretty uneventful until now. I've picked up some machine signatures headed my way. Many people had sent drones deep into space ever since the AI revolution automated everything, so I assume what I'm seeing is just an old fleet. Still, its signature doesn't match anything in my database which is a bit worrying."
secondText = "You notice 2 small drones approach you and stop, seemingly scanning for who and what you are. You flip a switch on your control board that emits a small wave of energy that has come to mean friend amongst space-farers. The drones do not reciprocate."
global.healthSpawnTime = 0
global.score = 0
global.shootSpawnTime = 0
global.armorSpawnTime = 0

spawnText(firstText, 2)






