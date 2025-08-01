function getFloor(){
	if place_meeting(x-1,y,oSolid){
		left = 1
	}
	else left = 0
	if place_meeting(x+1,y,oSolid){
		right = 1
	}
	else right = 0
	if place_meeting(x,y+1,oSolid){
		down = 1
	}
	else down = 0
	if place_meeting(x,y-1,oSolid){
		up = 1
	}
	else up = 0
	if place_meeting(x+xspd,y+yspd,oSolid){
	forward = 1	
	}
	else forward = 0
}


getFloor()
if forward = 1 or down+right+left+up=0{
	if down+right+left+up=0{
		image_angle -= 90
	}
	if forward = 1 and canRotate = 1 {
		image_angle += 90
		x+=xspd*32
		y-=yspd*32
		canRotate = 0
	}
}
else{
	canRotate = 1	
}
if not abs(yspd) = 1{
	yspd = 0	
}
if not abs(xspd) = 1{
	xspd = 0
}

xspd=cos(degtorad(image_angle))
yspd=sin(degtorad(image_angle))
x+=xspd*bspeed
y-=yspd*bspeed

if place_meeting(x,y,oBullet) and global.killBullet = 0{
	hp -= 1
	global.killBullet = 1
	if hp = 0 {
	audio_play_sound(KillEnemy,1,0)	
	instance_destroy()
	}
	else{
	audio_play_sound(EnemyDamage,1,0)
	}
}