x+=xspd
y+=yspd
if sprite_index == sBullet{
image_angle += 10
}
rix = x-initialX
riy = y-initialY
initdist = sqrt(riy*riy+rix*rix)

if initdist>=bRad or place_meeting(x,y,oSolid){
	instance_destroy()
}

if place_meeting(x,y,FinalBossEnemy){
	global.bossHP -= 1
	audio_play_sound(sfxEnemyDamage,1,0)
	instance_destroy()
}

if global.killBullet = 1 and place_meeting(x,y,global.enemies){
	global.killBullet = 0
	instance_destroy()
}
