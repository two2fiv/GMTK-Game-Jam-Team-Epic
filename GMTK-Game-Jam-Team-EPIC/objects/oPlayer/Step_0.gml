global.playerX = x
global.playerY = y

canJump = 0

if keyboard_check(ord("A")){
	xsp-=2
}

if keyboard_check(ord("D")){
	xsp+=2
}

if place_meeting(x,y+1,oSolid) or place_meeting(x,y-1,oSolid)
{
	ysp=0
	if not place_meeting(x,y-1,oSolid)
	{
		canJump = 1
	}
}
if keyboard_check(vk_space) and canJump = 1
	{
		ysp=-6	
	}
if ysp < 0 {
ysp+=0.18
}
else ysp+=0.24
xsp*=.6

move_and_collide(xsp,ysp,oSolid)

//FOR NEXT ROOM TRIGGER

/*
if place_meeting(x,y,TRIGGER)
{
	room_goto_next()
}
*/

// FOR COLLISIONS WITH ENEMIES

/*
if place_meeting(x,y,ENEMY)
{
	room_restart()
}

*/



if place_meeting(x,y,okillblock)
{
	room_restart()
}