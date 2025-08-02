if global.canMove == 1{
	if instance_exists(oClone){
	if (playbackIndex < initLength){
	
		x = inputX[playbackIndex]+8*oClone.image_xscale
		y = inputY[playbackIndex]+3
		mouseX = inputMouseX[playbackIndex]
		mouseY = inputMouseY[playbackIndex]
		ClickHold = inputClickHold[playbackIndex]
		ClickPress = inputClickPress[playbackIndex]
		rmx = mouseX-x
		rmy = mouseY-y

	playbackIndex += 1
	}
	else{
		x = initX
		y = initY
		playbackIndex = 0
	}
	

	angle = arctan2(rmx,rmy)
	angle = radtodeg(angle)-90

	image_angle = angle



	// this is almost certainly the dumbest way to add delay
	// but it allows you to tap fire, or hold fire
	// alarm 0 is used for hold fire, alarm 1 for tap fire
	// doesnt really matter though




	switch global.hasGun{
	
		case 1:
			if angle > -90{
				sprite_index = sGun
			}
			else{
				sprite_index = sGunFlip
			}
			if ClickPress == 1 and canFire{
				instance_create_layer(x,y,"weapons",oBulletClone)
				audio_play_sound(sfxGunfired,1,0)
				alarm[1] = 15
			}

			if ClickHold == 1 and canFire{
				instance_create_layer(x,y,"weapons",oBulletClone)
				audio_play_sound(sfxGunfired,1,0)
				canFire = false
				alarm[0] = 30
			}
		break
		case 2:
		sprite_index = sBeegGun
			if ClickPress == 1 and canFire{
				fireBigGun()
				alarm[1] = 15
			}
			if ClickHold == 1 and canFire{
				fireBigGun()
				alarm[0] = 30
			}
		

		
		
		break
	}
		if global.cloneGunCount > cloneLimit{
		if cloneIndex = 1{
			global.cloneGunCount -= 1
			instance_destroy()
		}
		else{
			cloneIndex -= 1	
		}
	}
	}
	else{
		global.cloneGunCount -= 1
		instance_destroy()		
	}
}