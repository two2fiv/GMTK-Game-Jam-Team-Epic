if global.canMove == 1{
	if (playbackIndex < initLength){
	
		input = input_list[playbackIndex]
	
		canJump = 0
		
		
	
		if input.left{
			xsp-=1.8
			image_xscale = -1
		}

		if input.right{
			xsp+=1.8
			image_xscale = 1
		}
		
		move_and_collide(xsp,ysp,oSolid)

		if place_meeting(x,y+abs(ysp),global.solids) or place_meeting(x,y-abs(ysp),global.solids){
			ysp=0
			if place_meeting(x,y+1,global.solids) or global.canGrapple = 1
			{
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

	

	playbackIndex += 1
	}
	else{
		ysp = initYsp
		xsp = initXsp
		x = initX
		y = initY
		playbackIndex = 0
	}

	if global.cloneCount > cloneLimit{
		if cloneIndex = 1{
			global.cloneCount -= 1
			instance_destroy()
		}
		else{
			cloneIndex -= 1	
		}
	}

	if position_meeting(x,y,global.enemies){
		global.cloneCount -= 1
		audio_play_sound(sfxLooperhit,1,0)
		instance_destroy()
	}
}