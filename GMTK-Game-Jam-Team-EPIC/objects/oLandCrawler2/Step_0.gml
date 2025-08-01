function getFloor(delta){
	if place_meeting(x-1-delta,y,global.solids){
		left = 1
	}
	else left = 0
	if place_meeting(x+1+delta,y,global.solids){
		right = 1
	}
	else right = 0
	if place_meeting(x+delta*image_xscale,y+1,global.solids){
		down = 1
	}
	else down = 0	
	near = left+right+down
}

if global.canMove = 1{
	
	rpx = x-global.playerX
	rpy = y-global.playerY
	d = sqrt(rpx*rpx+rpy*rpy)
	
	if d<400{
	phase = 1	
	}
	else{
	phase = 0	
	}	
	
	if phase = 0{
		getFloor(0)

		if place_meeting(x+xsp,y,global.solids) xor near = 0{

			xsp*=-1
			image_xscale *=-1	
		}
		x+=xsp
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
	
}

