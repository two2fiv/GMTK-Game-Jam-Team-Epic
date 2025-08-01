x+=xspd
y+=yspd

image_angle +=15

if sqrt((x-initialX)*(x-initialX)+(y-initialY)*(y-initialY))>=bRad or place_meeting(x,y,oSolid){
	instance_destroy()
}

if global.killBullet = 1 and place_meeting(x,y,global.enemies){
	global.killBullet = 0
	instance_destroy()
}