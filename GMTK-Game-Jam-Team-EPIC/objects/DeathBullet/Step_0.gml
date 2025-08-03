image_angle+=10
if state = 1{
	image_xscale +=0.01
	image_yscale+=0.01
	
	if image_xscale = 1 {
		state = 2
		audio_play_sound(ChargeShot,1,0)
		rpx = x-oPlayer.x
		rpy = y-oPlayer.y
		angle = arctan2(rpx,rpy)
		angle = (radtodeg(angle)+90)

		xspd=cos(degtorad(angle))*bspeed
		yspd=sin(degtorad(angle))*-1*bspeed

	}
}
if state = 2{

	x+=xspd
	y+=yspd

if place_meeting(x,y,global.bullets) and atk = 1{
		xspd = -2*xspd
		yspd = -0.5*yspd
		atk = 2
	}
}
if atk = 1{
	if place_meeting(x,y,oPlayer){
		global.playerHP -=4
		global.bossAtk = 1
		audio_play_sound(sfxKillEnemy,1,0)
		instance_destroy()
	}
}
else{
	if place_meeting(x,y,FinalBossEnemy){
		global.bossHP -=8
		global.bossAtk = 1
		audio_play_sound(ChargeShotDie,1,0)
		instance_destroy()
	}
}