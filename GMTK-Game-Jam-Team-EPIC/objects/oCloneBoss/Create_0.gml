xsp=0
ysp=0

hp = 10

rpx = 0
pdir = 0
dir = 0

backupRange = 200
stopRange =	10

canJump = false
jump = 0


spaceHeld = 0
invulnerable = 0

pFriction=0.5
isAccell = 0

function checkBullet(delta){
	if place_meeting(x-delta,y,global.bullets){
		left = 1
	}
	else left = 0
	if place_meeting(x+delta,y,global.bullets){
		right = 1
	}
	else right = 0

	near = left+right
}

