if global.hasGun = 2 {
	if place_meeting(osupervertdoor.x,osupervertdoor.y,global.bullets){
		sprite_index = svertdooropen
		open = true
		alarm[0] = 60
	}
}