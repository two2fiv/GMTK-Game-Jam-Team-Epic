if instance_exists(oCamera){
	draw_sprite(sHealth,8-global.playerHP,oCamera.x+32,oCamera.y+32)
}
else{
	draw_sprite(sHealth,8-global.playerHP,32,32)
}