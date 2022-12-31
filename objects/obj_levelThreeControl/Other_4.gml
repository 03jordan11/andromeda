/// @description Initialize music

// play music based on room
global.score = 0
global.healthSpawnTime = 0
global.shootSpawnTime = 0
global.armorSpawnTime = 0
bkgSoundId = audio_play_sound(space,1,true);
firstText = "After the drones die down you face one of the longest silences of your trip. For the next 1.1 million years you float through space without any interaction with foreign matter. It is just you and your ship. Luckily, human brain interfaces allow you to enjoy any type of reality, no matter where you are in the universe. At a thought, you command your neurons to form a reality where you are a quiet farmer with a loving family, a fearsome warrior in some ancient time, or any other reality you can create or have downloaded from the mega computer. Eventually, your systems indicate an asteroid field ahead, but you notice the signatures being out of the ordinary."

obj_textBox.textToShow = firstText






