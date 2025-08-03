image_angle+=10
if image_xscale !=1{
	image_xscale +=0.01
	image_yscale+=0.01
	
	if image_xscale = 1 and moving !=1{
	moving = 1	
	atk = 0
	audio_play_sound(ChargeShot,1,0)
}
}

if moving = 1{
	x+=xspd
	y+=yspd
}

if place_meeting(x,y,AnimatedBullet) and atk = 0{
	if global.hasGun == 2{
		xspd = -2*xspd
		yspd = -0.5*yspd
		atk = 1
	}
}

if place_meeting(x,y,AnimatedPlayerFirstFight) and image_xscale <=50{
	if image_xscale == 1{
	 audio_play_sound(playerExplode,1,0)
	 audio_stop_all()
	}
	image_xscale *=1.2
	image_yscale*=1.2
	if image_xscale > 50{
		alarm[0] = 10
		image_blend = c_white
	}
}

if place_meeting(x,y,FinalBossAnimation) and image_xscale <=50 and atk = 1 {
	image_xscale *=1.2
	image_yscale*=1.2
	if image_xscale > 50{
		instance_destroy(AnimatedGun)
		alarm[1] = 10
		image_blend = c_white
	}
}