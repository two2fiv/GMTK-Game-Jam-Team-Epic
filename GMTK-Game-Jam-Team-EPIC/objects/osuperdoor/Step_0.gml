if global.hasGun = 2 {
	if place_meeting(osuperdoor.x,osuperdoor.y,global.bullets){
		sprite_index = sdooropen
		open = true
		alarm[0] = 60
		audio_play_sound(sfxDoorOpen,1,0)
	}
}