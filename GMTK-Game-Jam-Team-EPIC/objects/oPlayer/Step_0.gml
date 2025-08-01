

canJump = 0
global.roomreentry = 0

if keyboard_check(ord("A")){
	xsp-=3
}

if keyboard_check(ord("D")){
	xsp+=3
}

if place_meeting(x,y+1,solids) or place_meeting(x,y-1,solids)
{
	ysp=0
	if not place_meeting(x,y-1,solids) or global.canGrapple = 1
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

move_and_collide(xsp,ysp,solids)
global.playerX = x
global.playerY = y

if keyboard_check(vk_space){
	if spaceHeld = 0{
		if global.inputRecording == 0{
			sprite_index = srecordingplayer
			global.inputRecording = 1
			global.initialX = x
			global.initialY = y
			global.initialYsp = ysp
			global.initialXsp = xsp
			spaceHeld = 1
		}
		else{
			sprite_index = splayer_1
			global.inputRecording = 0
			instance_create_layer(global.initialX,global.initialY,"player",oClone)
			spaceHeld = 1
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

if place_meeting(x,y,enemies) and invulnerable = 0{
	global.playerHP -= 1
	invulnerable = 120
	sprite_index = sPlayerHurt
}
if not invulnerable = 0{
	invulnerable -=1	
}
else{
	sprite_index = splayer_1	
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