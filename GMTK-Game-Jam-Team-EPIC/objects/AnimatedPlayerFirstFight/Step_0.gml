if wait = 0{
	if state = 1{
		move_and_collide(0,ysp,global.solids)

		if place_meeting(x,y+abs(ysp),global.solids) or place_meeting(x,y-abs(ysp),global.solids){
			ysp=0
		}
		ysp+=0.3
		if place_meeting(x,y+abs(ysp),global.solids){
			state = 2
			wait = 1
			alarm[1] = 10
			sprite_index = HeadlessArmDown
			instance_create_layer(x,y,"moving",AnimatedPlayerHeadFirstFight)
		}

	}
	if state = 2{
		state = 3
		wait = 1
		alarm[1]=10
	}
}