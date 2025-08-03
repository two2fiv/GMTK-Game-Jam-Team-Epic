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
	near = left+right+down
}

if global.canMove = 1{
	
	if phase = 0{
		getFloor(0)
		if changing = 1 and abs(xsp) < (2+abs(xacc)) {
			xsp+=xacc
			if abs(xsp) == 2{
			changing = 0	
			}
		}
		if place_meeting(x+xsp,y,global.solids) xor near = 0{
			changing = 1
			xacc*=-1
		}
		x+=xsp
		if xsp = 0{
		image_xscale *=-1	
		}
		
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
			

}