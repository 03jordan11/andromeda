/// @description Initialize music

// play music based on room
bkgSoundId = audio_play_sound(space,1,true);
firstText = "As you finish the first leg of your trip you notice signatures of machine activity. Many people have sent drones out into deep space since the AI Revolution automated all simple processes and made it inexpensive to do pretty much whatever you wanted. You figure these to be some of those drones, on return missions to the Universe to upload its swaths of data. However, the signatures don’t seem to match with the knowledge stored in your ship's personal database. While curious, you dismiss it as a glitch and move forward with your journey"
secondText = "You notice 2 small drones approach you and stop, seemingly scanning for who and what you are. You flip a switch on your control board that emits a small wave of energy that has come to mean friend amongst space-farers. The drones do not reciprocate."

obj_textBox.textToShow = firstText
//spawnCircularDrones()
spawnSinDrones()





