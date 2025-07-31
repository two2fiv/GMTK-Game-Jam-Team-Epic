rmx = mouse_x-x
rmy = mouse_y-y

angle = arctan2(rmx,rmy)
angle = radtodeg(angle)-90

image_angle = angle

// this is almost certainly the dumbest way to add delay
// but it allows you to tap fire, or hold fire
// alarm 0 is used for hold fire, alarm 1 for tap fire
// doesnt really matter though

if mouse_check_button_pressed(1) and canFire{
	instance_create_layer(x,y,"weapons",oBullet)
	alarm[1] = 15
}

if mouse_check_button(1) and canFire{
	instance_create_layer(x,y,"weapons",oBullet)
	canFire = false
	alarm[0] = 30
}


//canShoot+=1/gunSpeed

x=global.playerX
y=global.playerY
