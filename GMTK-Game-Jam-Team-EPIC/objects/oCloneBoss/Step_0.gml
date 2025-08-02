if global.canMove == 1{
if !instance_exists(oCloneBossGun){
instance_create_layer(x,y,"Weapons",oCloneBossGun)	
}
canJump = 0

rpx = x-global.playerX
if rpx/abs(rpx) = -1{
pdir = -1
}
else{
pdir = 1
}
if rpx <= backupRange{
dir = -1
}
rpx = abs(rpx)
if rpx > backupRange and rpx < backupRange+stopRange and not stopRange == 0{
dir = 0
}
if rpx >= backupRange+stopRange{
dir = 1	
}

xsp -= 1.4*(pdir*dir)


if oCloneBossGun.image_angle > -90{
	image_xscale = 1
}
else{
	image_xscale = -1
}


move_and_collide(xsp,ysp,global.solids)

checkBullet(rpx/150*64)

if near > 0{
	jump = 1	
}
else{
	jump = 0	
}

if place_meeting(x,y+abs(ysp),global.solids) or place_meeting(x,y-abs(ysp),global.solids)
{
	ysp=0
	if place_meeting(x,y+1,global.solids) or global.canGrapple = 1
	{
		canJump = 1
	}
}
if jump == 1 and canJump == 1
	{
		ysp=-5.4
	}

if ysp < 0 {
ysp+=0.18
}
else ysp+=0.3
xsp*=pFriction



if place_meeting(x,y,global.bullets) and invulnerable = 0{
	hp -= 1
	invulnerable = 30
	sprite_index = sCloneHurt
	audio_play_sound(sfxLooperhit,1,0)
}
if not invulnerable = 0{
	invulnerable -=1	
		if invulnerable = 0{
			sprite_index = sClone
		}
	}
}
if hp == 0{
	instance_create_layer(x,y,"Pickups",oClonePickup)
instance_destroy()	
}
if global.canMove = 0{
	image_xscale = -1
	if x>512{
	x-=0.4
	}
	else{
	global.canMove = 1	
	}
}