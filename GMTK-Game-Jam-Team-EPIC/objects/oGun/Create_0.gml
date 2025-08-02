angle=0
rmx = 0
rmy = 0


gunSpeed=1
canShoot=1
//gunSpeed=1
//canShoot=0
canFire = true

trueangle = 0

global.bulletIdx = 0

instance_create_layer(mouse_x,mouse_y,"weapons",oCrossHair)

function fireBigGun(){
	angle+=15
	global.bulletIdx = 0
			instance_create_layer(x,y,"weapons",oBullet)
			angle-=30
			instance_create_layer(x,y,"weapons",oBullet)
			angle+=15
			instance_create_layer(x,y,"weapons",oBullet)
			
			audio_play_sound(sfxGunfired,1,0)
			
			canFire = false
}

