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

global.inputRecording = 0
global.input_list = []
global.playerHP = 8

global.killBullet = 0

global.cloneCount = 0

nextSprite = sPlayer

global.canMove = 1

if global.hasGun != 0{
	instance_create_layer(x,y,"weapons",oGun)
}
if global.canGrapple == 1 {
	instance_create_layer(x,y,"Pickups",oGrappleCollect)
}
