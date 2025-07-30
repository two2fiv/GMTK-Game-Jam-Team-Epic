
ysp+=0.1
xsp=0

if keyboard_check(ord("A")){
	xsp=-3
}

if keyboard_check(ord("D")){
	xsp=+3
}

if place_meeting(x,y+1,oSolid)
{
	ysp=0
	if keyboard_check(vk_space)
	{
		ysp=-4	
	}
}


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