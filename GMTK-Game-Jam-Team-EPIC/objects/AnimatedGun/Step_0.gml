image_angle =(gangle+image_angle)/2

if !instance_exists(DeathBullet){
	instance_create_depth(367,123,0,DeathBullet)	
}

if DeathBullet.moving = 1 and not instance_exists(AnimatedBullet) and abs(x-DeathBullet.x)<100{
	if global.hasGun = 1{
	instance_create_depth(x,y,10,AnimatedBullet)
	}
	else{
	fireBigGun()	
	}
}