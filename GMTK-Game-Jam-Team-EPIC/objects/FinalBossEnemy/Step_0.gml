if global.bossHP < 128 and !instance_exists(oFinalBossGun){
	instance_create_depth(x-10,y-72,-100,oFinalBossGun)
}
if global.bossAtk = 1{
	alarm[0] = 100
	global.bossAtk = 0
}
if global.bossHP <= 0 {
	global.canMove = 0	
	
	image_xscale*=1.03
	image_yscale*=1.03
	audio_stop_all()
	if alarm[2] = -1{
		sprite_index = sFinalBossExploding
		alarm[3] = 40
		alarm[2] = 100	
	}
}