if place_meeting(odoor2.x,odoor2.y,global.bullets) and global.lockeddoors = 0{
	sprite_index = sdooropen
	open = true
	alarm[0] = 60
	audio_play_sound(sfxDoorOpen,1,0)
}

if instance_exists(oCloneBoss) {
	global.lockeddoors = 1
	sprite_index = slockeddoor
}

if global.canClone = 1 and sprite_index = slockeddoor {
	sprite_index = sdoor
	global.lockeddoors = 0
}