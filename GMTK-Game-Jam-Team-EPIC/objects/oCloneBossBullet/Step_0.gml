x+=xspd
y+=yspd

rix = x-initialX
riy = y-initialY
initdist = sqrt(riy*riy+rix*rix)

if place_meeting(x,y,oSolid){
	instance_destroy()
}

if global.killBullet = 1 and place_meeting(x,y,global.players){
	global.killBullet = 0
	instance_destroy()
}