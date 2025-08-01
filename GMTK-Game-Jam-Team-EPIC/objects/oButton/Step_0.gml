if place_meeting(x,y,global.players) and buttonDown == 0{
	buttonDown = 1
	global.buttonsDown += 1
	sprite_index = sButtonDown
}
if !place_meeting(x,y,global.players) and buttonDown == 1{
	buttonDown = 0
	global.buttonsDown -= 1
	sprite_index = sButtonUp
}

/*
do make buttons work with a door, have the door check if global.buttonsDown == global.buttonsGoal
you also need to make it so that global.buttonsGoal resets when a room does