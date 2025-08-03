
if instance_exists(FinalBossEnemy){
	if y!=FinalBossEnemy.y-120
	{
		y-=4
	}
	else{
	
	if global.canMove == 1{
		rpx = global.playerX-x
		rpy = global.playerY-y
		if instance_exists(oClone){
		rpx = oClone.x-x
		rpy = oClone.y-y
		}
		

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
			instance_create_depth(x,y,depth-1,oFinalBossBullet)
			canFire = false
			alarm[0] = 50
		}
		
	}
}
}