x+=xspd
y+=yspd
if sprite_index == sBullet{
image_angle += 10
}
rix = x-initialX
riy = y-initialY
initdist = sqrt(riy*riy+rix*rix)

if place_meeting(x,y,DeathBullet){
	instance_destroy()
}
