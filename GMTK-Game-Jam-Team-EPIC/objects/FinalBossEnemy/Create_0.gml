global.bossHP = 255
global.bossAtk = 1
global.spawnpoint = 4
phase = 1
atk = 0
patk = 0

function ChargeShotAttack(){
	instance_create_depth(x-8,y-100,-1,DeathBullet)	
	audio_play_sound(ChargingShot,1,0)
	atk = 0
}
function ThrowSlime(){
	instance_create_layer(x,y,"enemies",oSummonSlime)	
	atk = 0
}