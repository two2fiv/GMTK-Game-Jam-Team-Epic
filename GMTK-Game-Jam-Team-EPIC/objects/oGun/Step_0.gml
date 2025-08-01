if global.canMove == 1{
	rmx = mouse_x-x
	rmy = mouse_y-y

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
			if mouse_check_button_pressed(1) and canFire{
				instance_create_layer(x,y,"weapons",oBullet)
				audio_play_sound(sfxGunfired,1,0)
				alarm[1] = 15
			}

			if mouse_check_button(1) and canFire{
				instance_create_layer(x,y,"weapons",oBullet)
				audio_play_sound(sfxGunfired,1,0)
				canFire = false
				alarm[0] = 30
			}
		
			x=global.playerX + 12*oPlayer.image_xscale+oPlayer.xsp
			y=global.playerY+oPlayer.ysp

		break
		case 2:
		sprite_index = sBeegGun
			if mouse_check_button_pressed(1) and canFire{
				fireBigGun()
				alarm[1] = 15
			}
			if mouse_check_button(1) and canFire{
				fireBigGun()
				alarm[0] = 30
			}
		
			x=global.playerX + 8*oPlayer.image_xscale + oPlayer.xsp
			y=global.playerY + 3 + oPlayer.ysp
		
		
		break
	}
}