if keyboard_check(vk_f11){
	window_set_fullscreen(!window_get_fullscreen())
}

if !instance_exists(oPlayer) exit;

camWidth = camera_get_view_width(view_camera[0])
camHeight = camera_get_view_height(view_camera[0])

camX = oPlayer.x-camWidth/2
camY = oPlayer.y-camHeight/2

camX = clamp(camX,0,room_width - camWidth)
camY = clamp(camY,0,room_height - camHeight)

gX += (camX - gX) * spd
gY += (camY - gY) * (spd / 2)

camera_set_view_pos(view_camera[0], camX, camY)