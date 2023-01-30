/// @description Initialize music

// play music based on room
global.score = 0
global.healthSpawnTime = 0
global.shootSpawnTime = 0
global.armorSpawnTime = 0
bkgSoundId = audio_play_sound(space,1,true);
firstText = "Captain's Log 2,281,298\n\nBefore I started this trip I sent out a preemptive sensor array to search for signs of life. Today, I picked one of its signals. From the data it gathered I found a planet with a breathable atmosphere around 500ly away. It will be nice to experience true nature again. The drones and fighters I've encountered keep coming around, but so far I've been able to keep them at bay. Not too much further now, just have to keep going."

spawnText(firstText, 4)







