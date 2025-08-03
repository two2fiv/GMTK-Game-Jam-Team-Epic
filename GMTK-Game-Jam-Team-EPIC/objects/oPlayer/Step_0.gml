if global.canMove == 1{

canJump = 0
global.roomreentry = 0

if keyboard_check_pressed(ord("W")){
w=1	
}
else{
w=0	
}



if keyboard_check(ord("A")) and isAccell == 0  or isAccell = -1{
	xsp-=1.8
	image_xscale = -1
}

if keyboard_check(ord("D")) and isAccell == 0 or isAccell == 1{
	xsp+=1.8
	image_xscale = 1
}
if global.hasGun > 0{
	if mouse_x > x {
		image_xscale = 1
	}
	else{
		image_xscale = -1
	}
}

move_and_collide(xsp,ysp,global.solids)

if place_meeting(x,y+abs(ysp),global.solids) or place_meeting(x,y-abs(ysp),global.solids)
{
	ysp=0
	if place_meeting(x,y+1,global.solids) or global.canGrapple = 1
	{
		canJump = 1
	}
}
if keyboard_check(ord("W")) and canJump = 1
	{
		ysp=-5.4
	}
if global.hasWallJump = 1{
	canWallJump()
	if w == 1 and cnWlJmp = 1 {
		ysp = -5.4	
		pFriction = 0.84
		alarm[3] = 10
		isAccell = nextX
	}
}
	
if ysp < 0 {
ysp+=0.18
}
else ysp+=0.3
xsp*=pFriction



	


		




if keyboard_check(vk_space) and global.canClone{
	if spaceHeld = 0{
		if global.inputRecording == 0{
			global.inputRecording = 1
			global.initialX = x
			global.initialY = y
			global.initialYsp = ysp
			global.initialXsp = xsp
			spaceHeld = 1
			nextSprite = sPlayerRecording
		}
		else{
			global.inputRecording = 0
			instance_create_layer(global.initialX,global.initialY,"player",oClone)
			instance_create_layer(global.initialX,global.initialY,"Weapons",oGunClone)
			spaceHeld = 1
			nextSprite = sPlayer
		}
	}
}
else{
spaceHeld = 0	
}
//Input Recording
if global.inputRecording==1{

	array_push(global.inputX,x)
	array_push(global.inputY,y)
	array_push(global.inputMouseX,mouse_x)
	array_push(global.inputMouseY,mouse_y)
	if mouse_check_button_pressed(1){
		array_push(global.inputClickPress,1)
	}
	else{
		array_push(global.inputClickPress,0)
	}
	if mouse_check_button(1){
	array_push(global.inputClickHold,1)
	}
	else{
	array_push(global.inputClickHold,0)
	}
}
else{
	global.inputX = []
	global.inputY = []
	global.inputMouseX = []
	global.inputMouseY = []
}

if place_meeting(x,y,global.enemies) and invulnerable = 0{
	global.playerHP -= 1
	invulnerable = 120
	if nextSprite = sPlayer{
	sprite_index = sPlayerHurt
	}
	else{
	sprite_index = sPlayerRecordingHurt
	}
	audio_play_sound(sfxLooperhit,1,0)
}
if not invulnerable = 0{
	invulnerable -=1	
	if invulnerable = 0{
		if nextSprite = sPlayer{
			sprite_index = sPlayer
		}
		else{
			sprite_index = sPlayerRecording
		}
	}
}

if global.playerHP <= 1 {
	global.animate = 1
	room_goto(PlayAnimations)
}

if place_meeting(x,y, roomchange)
{
    room_goto_next()
    //alarm[1] = 1 * room_speed
}

if place_meeting(x,y, roomchangeback)
{
	global.roomreentry = 1
    room_goto_previous()
}


if place_meeting(x,y,okillblock)
{
	audio_play_sound(sfxLooperhit,1,0)
	global.playerHP -=2
	room_restart()
}

global.playerX = x
global.playerY = y

}

//spriteGet()
