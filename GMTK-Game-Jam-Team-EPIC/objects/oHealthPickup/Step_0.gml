
	if position_meeting(x,y,oPlayer){
		global.playerHP = 8
		audio_play_sound(sfxNewPower,1,0)
		instance_destroy()
	}
