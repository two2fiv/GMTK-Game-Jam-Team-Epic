
if (playbackIndex < initLength){
	
	input = input_list[playbackIndex]
	
	canJump = 0
	
	if input.left{
		xsp-=2
	}

	if input.right{
		xsp+=2
	}

	if place_meeting(x,y+1,oSolid) or place_meeting(x,y-1,oSolid){
		ysp=0
		if not place_meeting(x,y-1,oSolid) or canGrapple = 1{
		canJump = 1
		}
	}
	if input.jump and canJump = 1{
		ysp=-5.4
	}
	if ysp < 0 {
		ysp+=0.18
	}
	else ysp+=0.3
	xsp*=.6

move_and_collide(xsp,ysp,oSolid)

playbackIndex += 1
}
else{
	instance_destroy()
}
	