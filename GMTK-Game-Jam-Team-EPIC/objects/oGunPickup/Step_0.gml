if global.canMove = 1{
	y+=ysp
	ysp+=yacc

	if abs(ysp) > 3{
		yacc*=-1	
	}

	if position_meeting(x,y,oPlayer){
		global.hasGun += 1	
		global.canMove = 0
		x= global.playerX
		y = global.playerY-48
		audio_play_sound(sfxNewPower,1,0)
		alarm[0] = 110
		instance_create_layer(x,y,"Pickups",oHalo)
	}
}