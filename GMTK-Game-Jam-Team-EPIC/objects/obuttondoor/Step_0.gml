if global.buttonGoal = global.buttonsDown{
	sprite_index = sdooropen
	open = true
	audio_play_sound(sfxDoorOpen,1,0)
}
else{
open = false
sprite_index = sbuttondoor
}