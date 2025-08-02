window_set_size(1280,720)
xsp=0
ysp=0




canJump = false


spaceHeld = 0
invulnerable = 0

if( !variable_global_exists("roomreentry")){
	global.roomreentry = 0
	
}


sprite_index = sPlayer

global.playerX = x
global.playerY = y


pFriction=0.6
isAccell = 0


canJump = false


spaceHeld = 0
invulnerable = 0



if( !variable_global_exists("roomreentry")){
	global.roomreentry = 0
	
}


sprite_index = sPlayer

global.playerX = x
global.playerY = y

global.inputRecording = 0
global.input_list = []
global.playerHP = 8

global.killBullet = 0

global.cloneCount = 0

w = 0

nextSprite = sPlayer

global.canMove = 1

if global.hasGun != 0{
	instance_create_layer(x,y,"weapons",oGun)
}
if global.canGrapple == 1 {
	instance_create_layer(x,y,"Pickups",oGrappleCollect)
}


function canWallJump(){
	cnWlJmp = 0
	if place_meeting((x-1),y,global.solids){
		left = 1
	}
	else left = 0
	if place_meeting(x+1,y,global.solids){
		right = -1
	}
	else right = 0
	
	if keyboard_check(ord("A")) or keyboard_check(ord("D")){
		holdDir = 1	
	}
	else{
	holdDir = 0	
	}
	nextX = left+right

	if left+right != 0 and canJump != 1{
		
		cnWlJmp = 1
	}
}
