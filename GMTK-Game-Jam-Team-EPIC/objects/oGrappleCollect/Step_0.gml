if global.canGrapple == 0{

	y+=ysp
	ysp+=yacc

	if abs(ysp) > 3{
		yacc*=-1	
	}

	if position_meeting(x,y,oPlayer){
		global.canGrapple = 1	
		global.canMove = 0
		x= global.playerX
		y = global.playerY-48
		audio_play_sound(sfxNewPower,1,0)
		alarm[0] = 110
		instance_create_layer(x,y,"Pickups",oHalo)
	}
}
if global.canMove = 1 and global.canGrapple = 1{
	image_yscale = 1
	image_xscale = 1
	x=oPlayer.x+oPlayer.xsp
	y=oPlayer.y-33+oPlayer.ysp
}
