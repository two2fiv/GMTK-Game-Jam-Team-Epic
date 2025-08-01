rmx = mouse_x-x
rmy = mouse_y-y
bspeed=12
angle = arctan2(rmx,rmy)

angle = radtodeg(angle)-90
xspd=cos(degtorad(angle))*bspeed
yspd=sin(degtorad(angle))*-1*bspeed
image_angle=angle
x+=xspd*2
y+=yspd*2

initialX=x
initialY=y

rix = x-initialX
riy = y-initialY

initdist = 0

bRad = 800