if global.buttonGoal = global.buttonsDown{
	sprite_index = svertdooropen
	open = true
	audio_play_sound(sfxDoorOpen,1,0)
}
else{
open = false
sprite_index = svertdoor	
}