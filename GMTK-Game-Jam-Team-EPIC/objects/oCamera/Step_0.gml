if follow != noone{
	xTo = follow.x;
	yTo = follow.y;
}

x-=(x-xTo)/25
y-=(y-yTo)/50

camera_set_view_pos(view_camera[0],x-(camWidth*0.5),y-(camHeight*0.5))