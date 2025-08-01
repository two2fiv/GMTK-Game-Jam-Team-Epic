

canJump = 0
global.roomreentry = 0

if keyboard_check(ord("A")){
	xsp-=3
}

if keyboard_check(ord("D")){
	xsp+=3
}

if place_meeting(x,y+1,global.solids) or place_meeting(x,y-1,global.solids)
{
	ysp=0
	if not place_meeting(x,y-1,global.solids) or global.canGrapple = 1
	{
		canJump = 1
	}
}
if keyboard_check(ord("W")) and canJump = 1
	{
		ysp=-5.4
	}
if ysp < 0 {
ysp+=0.18
}
else ysp+=0.3
xsp*=.6

move_and_collide(xsp,ysp,global.solids)
global.playerX = x
global.playerY = y

if keyboard_check(vk_space){
	if spaceHeld = 0{
		if global.inputRecording == 0{
			if sprite_index == sPlayer{
				sprite_index = sRecording
			}
			else{
				sprite_index = sRecordingHurt	
			}
			global.inputRecording = 1
			global.initialX = x
			global.initialY = y
			global.initialYsp = ysp
			global.initialXsp = xsp
			spaceHeld = 1
			nextSprite = sRecording
		}
		else{
			if sprite_index == sRecording{
			sprite_index = sPlayer
			}
			else{
			sprite_index = sPlayerHurt	
			}
			global.inputRecording = 0
			instance_create_layer(global.initialX,global.initialY,"player",oClone)
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
	var input = {
		left:keyboard_check(ord("A")),
		jump:keyboard_check(ord("W")),
		down:keyboard_check(ord("S")),
		right:keyboard_check(ord("D"))
	}		
array_push(global.input_list,input)
}
else{
	global.input_list = []
}

if place_meeting(x,y,global.enemies) and invulnerable = 0{
	global.playerHP -= 1
	invulnerable = 120
	if nextSprite = sPlayer{
	sprite_index = sPlayerHurt
	}
	else{
	sprite_index = sRecordingHurt
	}
	audio_play_sound(looperhit,1,0)
}
if not invulnerable = 0{
	invulnerable -=1	
	if invulnerable = 0{
		if nextSprite = sPlayer{
			sprite_index = sPlayer
		}
		else{
			sprite_index = sRecording
		}
	}
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
	room_restart()
}