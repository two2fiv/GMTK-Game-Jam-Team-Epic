if global.canMove == 1{
	if (playbackIndex < initLength){
	
		x = inputX[playbackIndex]
		y = inputY[playbackIndex]

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