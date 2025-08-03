window_set_size(1280,720)
xsp=0
ysp=0


instance_create_depth(x,y,0,Health)

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
global.inputX = []
global.inputY = []
global.inputMouseX = []
global.inputMouseY = []
global.inputClickPress = []
global.inputClickHold = []
if( !variable_global_exists("spawnpoint")){
	global.spawnpoint = 1
}
global.killBullet = 0

global.cloneCount = 0
global.cloneGunCount = 0
global.buttonGoal = 0
global.buttonsDown = 0

w = 0

nextSprite = sPlayer



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

function spriteGet(){
	if global.hasWallJump+global.canGrapple = 0{
	baseSprite = sPlayer
	basehurtSprite = sPlayerHurt
	walkSprite = sPlayerWalk
	walkhurtSprite = sPlayerWalkHurt
	jumpuphurtSprite = sPlayerJumpUpHurt
	jumpupSprite = sPlayerJumpUp
	jumpdownSprite = sPlayerJumpDown
	jumpdownhurtSprite = sPlayerJumpDownHurt
	recordingSprite = sPlayerRecording
	recordinghurtSprite = sPlayerRecordingHurt
	}
	if global.inputRecording = 0{
		if invulnerable = 0{
			if abs(ysp) !=0.3{
				if ysp < 0{
					sprite_index = jumpupSprite
				}
				else{
					sprite_index = jumpdownSprite
				}
			}
			else{
				if xsp!=0{
					sprite_index = walkSprite
				}
				else{
					sprite_index = baseSprite	
				}
			}
		}
		else{
			if abs(ysp) !=.3{
					if ysp < 0{
					sprite_index = jumpuphurtSprite
					}
					else{
					sprite_index = jumpdownhurtSprite
					}
				}
				else{
					if xsp!=0{
						sprite_index = walkhurtSprite
					}
					else{
						sprite_index = basehurtSprite	
					}	
				}
			}
	}
	else{
		if invulnerable = 0{
			if abs(ysp) !=0.3{
				if ysp < 0{
					sprite_index = jumpupSprite
				}
				else{
					sprite_index = jumpdownSprite
				}
			}
			else{
				if xsp!=0{
					sprite_index = walkSprite
				}
				else{
					sprite_index = baseSprite	
				}
			}
		}
		else{
			if abs(ysp) !=.3{
					if ysp < 0{
					sprite_index = jumpuphurtSprite
					}
					else{
					sprite_index = jumpdownhurtSprite
					}
				}
				else{
					if xsp!=0{
						sprite_index = walkhurtSprite
					}
					else{
						sprite_index = basehurtSprite	
					}	
				}
			}
	}
}