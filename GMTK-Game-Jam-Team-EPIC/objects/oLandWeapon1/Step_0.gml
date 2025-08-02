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
	getFloor(4)
			if place_meeting(x+xsp,y,global.solids) or near = 0{
				image_xscale *=-1	
					}
			x+=1.4*image_xscale
}

if place_meeting(x,y,global.bullets) and global.killBullet = 0{
	hp -= 1
	global.killBullet = 1
	if hp = 0 {
	audio_play_sound(sfxKillEnemy,1,0)	
	instance_destroy()
	}
	else{
	audio_play_sound(sfxEnemyDamage,1,0)
	}
}