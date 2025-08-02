playbackIndex = 0
angle=0
rmx = 0
rmy = 0
mouseX = 0
mouseY = 0

initX = global.initialX
initY = global.initialY
inputX = global.inputX
inputY = global.inputY
inputMouseX = global.inputMouseX
inputMouseY = global.inputMouseY
inputClickPress = global.inputClickPress
inputClickHold = global.inputClickHold
ClickPress = 0
ClickHold = 0


gunSpeed=1
canShoot=1

//gunSpeed=1
//canShoot=0
canFire = true

global.bulletIdx = 0

initLength = array_length(inputX)

global.cloneGunCount += 1
cloneIndex = global.cloneGunCount
cloneLimit = 1


function fireBigGun(){
	angle+=15
	global.bulletIdx = 0
			instance_create_layer(x,y,"weapons",oBulletClone)
			angle-=30
			instance_create_layer(x,y,"weapons",oBulletClone)
			angle+=15
			instance_create_layer(x,y,"weapons",oBulletClone)
			
			audio_play_sound(sfxGunfired,1,0)
			
			canFire = false
}

