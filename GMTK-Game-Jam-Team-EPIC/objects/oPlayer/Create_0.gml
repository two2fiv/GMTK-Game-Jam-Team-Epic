window_set_size(1280,720)
xsp=0
ysp=0
global.canGrapple = 1

canJump = false
solids = [odoor, oSolid]

spaceHeld = 0

if( !variable_global_exists("roomreentry")){
	global.roomreentry = 0
	
}


sprite_index = splayer_1

global.playerX = x
global.playerY = y

global.inputRecording = 0
global.input_list = []