if place_meeting(odoor2.x,odoor2.y,oBullet){
	sprite_index = sdooropen
	open = true
	alarm[0] = 60
	audio_play_sound(sfxDoorOpen,1,0)
}