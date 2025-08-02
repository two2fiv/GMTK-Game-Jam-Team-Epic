
if instance_exists(oLandWeapon1){
	if global.canMove == 1{
		rpx = global.playerX-x
		rpy = global.playerY-y

		angle = arctan2(rpx,rpy)
		angle = radtodeg(angle)-90

		image_angle = angle
	
		dis=sqrt(rpx*rpx+rpy*rpy)


		if angle > -90{
			sprite_index = sLandTurret
		}
		else{
			sprite_index = sLandTurretFlip
		}

		if dis<range and canFire{
			instance_create_layer(x,y,"weapons",oLandWeaponBullet)
			audio_play_sound(sfxGunfired,1,0)
			canFire = false
			alarm[0] = 50
		}
		
		x=oLandWeapon1.x + 5*oLandWeapon1.image_xscale
		y=oLandWeapon1.y-40


	}
}
else{
instance_destroy()	
}
