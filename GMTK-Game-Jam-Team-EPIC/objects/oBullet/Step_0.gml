x+=xspd
y+=yspd

if sqrt((x-initialX)*(x-initialX)+(y-initialY)*(y-initialY))>=bRad or place_meeting(x,y,oSolid){
	instance_destroy()
}