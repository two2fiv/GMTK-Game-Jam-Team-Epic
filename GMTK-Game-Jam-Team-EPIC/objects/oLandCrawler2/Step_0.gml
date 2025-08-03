function getFloor(delta){
	if place_meeting(x-1-delta,y,global.solids){
		left = 1
	}
	else left = 0
	if place_meeting(x+1+delta,y,global.solids){
		right = 1
	}
	else right = 0
	if place_meeting(x+delta*image_xscale,y+1,global.solids){
		down = 1
	}
	else down = 0	
	if place_meeting(x+delta+xsp,y,global.solids){
		forward = 1	
	}
	else{
		forward = 0	
	}
	
	
	
	near = left+right+down
}

if global.canMove = 1{
	
	canJump = 0
	
	rpx = x-global.playerX
	rpy = y-global.playerY
	d = sqrt(rpx*rpx+rpy*rpy)
	
	if d<chaseRadius{
		phase = 1	
		sprite_index = LandCrawler2Phased
	}
	else{
		phase = 0	
		sprite_index = LandCrawler2Unphased
	}	
	
	jump = 0
	
	if phase = 0{
		getFloor(4)
		if place_meeting(x+xsp,y,global.solids) or near = 0{
			image_xscale *=-1	
				}
		x+=image_xscale
		move_and_collide(0,ysp,global.solids)
	}
			
	if phase = 1{
		getFloor(32)
		
		if forward == 1 or near == 1{
			jump = 1	
		}
		if abs(rpx)>changeRadius{
			if rpx > 0{
				move = -1
			}
			else{
				move = 1	
			}
		}
		if move == -1{
			xsp-=1.3
			image_xscale = -1
		}
		if move == 1{
			xsp+=1.3
			image_xscale = 1
	
		}
		move_and_collide(xsp,ysp,global.solids)
		
	}

		

		if place_meeting(x,y+abs(ysp),global.solids) or place_meeting(x,y-abs(ysp),global.solids)
		{
			ysp=0
			if place_meeting(x,y+1,global.solids) or global.canGrapple = 1
			{
				canJump = 1
			}
		}
		if jump = 1 and canJump = 1
			{
				ysp=-5.4
			}
		if ysp < 0 {
			ysp+=0.18
		}
		else ysp+=0.3
		xsp*=.6
}

			if place_meeting(x,y,global.bullets) and global.killBullet = 0 and invulnerable = 0{
				hp -= 1
				invulnerable = 15
				global.killBullet = 1
				if hp = 0 {
				audio_play_sound(sfxKillEnemy,1,0)	
				instance_destroy()
				}
				else{
				audio_play_sound(sfxEnemyDamage,1,0)
				}
			}
			if invulnerable != 0{
				invulnerable -=1	
			}
			
