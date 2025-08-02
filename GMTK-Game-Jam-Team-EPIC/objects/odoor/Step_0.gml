if place_meeting(odoor.x,odoor.y,global.bullets){
	sprite_index = sdooropen
	open = true
	alarm[0] = 60
	audio_play_sound(sfxDoorOpen,1,0)
}