rpX = x-global.playerX
rpY = y-global.playerY
if sqrt(rpX*rpX+rpY*rpY)<=detectRad and canAtk = 1 {
	angle = arctan2(rpX,rpY)

	angle = radtodeg(angle)-90
	xsp=cos(degtorad(angle))*bsp
	ysp=sin(degtorad(angle))*bsp
	image_angle=90+angle
	canAtk = 0
	gpx = global.playerX
	gpy = global.playerY
}
	x-=xsp
	y+=ysp
rpcX = x-gpx
rpcY = y-gpy
dp = sqrt(rpcX*rpcX+rpcY*rpcY)
if dp < 24{
	xsp = 0
	ysp = 0
	canAtk = 2
}

if canAtk = 2{
	y-=1
	image_angle = 0
	if y <= 60 or place_meeting(x,y-1,oSolid){
	canAtk = 1
	}
}

if place_meeting(x,y,oBullet){
	hp -= 1
	if hp = 0 {
	audio_play_sound(KillEnemy,1,0)	
	instance_destroy()
	}
	else{
	audio_play_sound(EnemyDamage,1,0)
	}
}