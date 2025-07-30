rmx = mouse_x-x
rmy = mouse_y-y

angle = arctan2(rmx,rmy)
angle = radtodeg(angle)-90

image_angle = angle

if mouse_check_button(1) and canShoot>=1{
	instance_create_layer(x,y,"Instances",sBullet)
	canShoot=0
}

canShoot+=1/gunSpeed