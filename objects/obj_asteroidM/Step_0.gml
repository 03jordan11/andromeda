/// @description making it spin

if spinDirection == 0
	image_angle += spinSpeed
else
	image_angle -= spinSpeed
	
x -= flySpeed
y += yMov
//on destroy
if durability == 0{
	obj_control.score++
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
	instance_destroy(self.id)
}