if place_meeting(odoor.x,odoor.y,global.bullets) and global.lockeddoors = 0{
	sprite_index = sdooropen
	open = true
	alarm[0] = 60
	audio_play_sound(sfxDoorOpen,1,0)
}

if instance_exists(oCloneBoss) {
	global.lockeddoors = 1
	sprite_index = slockeddoor
}

if global.lockeddoors = 1 and not instance_exists(oCloneBoss) {
	global.lockeddoors = 0
	sprite_index = sdoor
}