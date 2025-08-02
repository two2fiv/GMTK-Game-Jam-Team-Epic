if place_meeting(x,y,global.bullets) and not instance_exists(oCloneBoss){
	sprite_index = sdooropen
	open = true
	alarm[0] = 60
	audio_play_sound(sfxDoorOpen,1,0)
}

if global.canMove = 1 {
	instance_create_layer(oCloneBossDoor.x, oCloneBossDoor.y, "Geometry", odoor2)
	instance_destroy(oCloneBossDoor)
}