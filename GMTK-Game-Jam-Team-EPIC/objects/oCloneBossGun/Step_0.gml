
if instance_exists(oCloneBoss){
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

		if canFire{
			instance_create_layer(x,y,"Enemies",oCloneBossBullet)
			audio_play_sound(sfxEnemyGunfired,1,0)
			canFire = false
			alarm[0] = 50
		}
		
		x=oCloneBoss.x + 5*oCloneBoss.image_xscale
		y=oCloneBoss.y+7


	}
}
else{
instance_destroy()	
}
