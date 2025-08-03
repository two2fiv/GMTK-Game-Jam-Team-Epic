image_angle =(gangle+image_angle)/2

if !instance_exists(DeathBulletAnimation){
	instance_create_depth(485,106,0,DeathBulletAnimation)	
	audio_play_sound(ChargingShot,1,0)
}

if DeathBulletAnimation.moving = 1 and not instance_exists(AnimatedBullet) and abs(x-DeathBulletAnimation.x)<100{
	if global.hasGun = 1{
	instance_create_depth(x,y,10,AnimatedBullet)
	}
	else{
	fireBigGun()	
	}
}