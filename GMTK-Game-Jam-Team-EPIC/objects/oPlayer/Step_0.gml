global.playerX = x
global.playerY = y

ysp+=0.1
xsp=0

if keyboard_check(ord("A")){
	xsp=-3
}

if keyboard_check(ord("D")){
	xsp=+3
}

if place_meeting(x,y+1,ofloor)
{
	ysp=0
	if keyboard_check(vk_space) and canJump = true
	{
		ysp=-4
	}
}


/*
if keyboard_check(vk_space) and not place_meeting(x,y+1,ofloor){
	canJump = true
	alarm[0] = 60
}
*/


move_and_collide(xsp,ysp, solids)


//FOR NEXT ROOM TRIGGER


if place_meeting(x,y, roomchange)
{
	room_goto_next()
	alarm[1] = 5
}

if place_meeting(x,y, roomchangeback)
{
	room_goto_previous()
	alarm[2] = 5
}

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