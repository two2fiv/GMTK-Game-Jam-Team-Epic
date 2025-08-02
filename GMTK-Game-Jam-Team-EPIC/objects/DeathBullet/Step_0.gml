if image_xscale !=1{
	image_xscale +=0.01
	image_yscale+=0.01
	image_angle+=10
}
if image_xscale = 1 and moving !=1{
	moving = 1	
	atk = 0
}

if instance_exists(AnimatedBullet){
	moving = 0	
}
if image_xscale = 1{
	x+=xspd
	y+=yspd
}

if place_meeting(x,y,AnimatedBullet) and atk = 0{
	if global.hasGun == 2{
		xspd = -2*xspd
		yspd = -0.5*yspd
		atk = 1
	}
}