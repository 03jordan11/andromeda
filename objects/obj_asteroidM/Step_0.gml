/// @description making it spin

if spinDirection == 0
	image_angle += spinSpeed
else
	image_angle -= spinSpeed
	
x -= flySpeed
y += yMov
//on destroy
if durability == 0{
	global.score++
	if astType == 1{
		temp = instance_create_depth(x, y, -10000, obj_asteroidS, {
			yMov: 1
		})
		temp = instance_create_depth(x, y, -10000, obj_asteroidS, {
			yMov: -1
		})
		
	}else if astType == 2{
		temp = instance_create_depth(x, y, -10000, obj_asteroidM, {
			yMov: 1
		})
		temp = instance_create_depth(x, y, -10000, obj_asteroidM, {
			yMov: -1
		})
	}
	audio_play_sound(enemyExplosion,1,false)
	instance_destroy(self.id)
}