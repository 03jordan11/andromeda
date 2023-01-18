/// @description Initialize music

// play music based on room
global.score = 0
global.healthSpawnTime = 0
global.shootSpawnTime = 0
global.armorSpawnTime = 0
bkgSoundId = audio_play_sound(space,1,true);
firstText = "The planet you picked up on your sensors is so close you can see it in the distance, as bright as Jupiter once was from earth’s surface. The closer you get, the more you see. A haven of green and blue, a new world ready to explore. As the planet grows bigger in your view you begin to get alerts of activity nearby. You prepare for what you hope will be your last fight."

spawnText(firstText, 5)







