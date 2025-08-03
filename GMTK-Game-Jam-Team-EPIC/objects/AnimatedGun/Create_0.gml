if global.hasGun = 1{
sprite_index = sGun
}
else{
sprite_index = sBeegGun	
}
set = 0
gangle = arctan2(x-485,y-106)
gangle = (radtodeg(gangle)+90)


function fireBigGun(){
	image_angle+=15
	global.bulletIdx = 0
			instance_create_depth(x,y,10,AnimatedBullet)
			image_angle-=30
			instance_create_depth(x,y,10,AnimatedBullet)
			image_angle+=15
			instance_create_depth(x,y,10,AnimatedBullet)
			
			audio_play_sound(sfxGunfired,1,0)
			
			canFire = false
}