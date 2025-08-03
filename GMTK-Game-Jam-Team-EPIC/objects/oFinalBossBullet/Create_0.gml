
bspeed=4
angle = oFinalBossGun.angle

xspd=cos(degtorad(angle))*bspeed
yspd=sin(degtorad(angle))*-1*bspeed
image_angle=angle
x+=xspd*7
y+=yspd*7

initialX=x
initialY=y

rix = x-initialX
riy = y-initialY

initdist = 0

image_xscale = 1
image_yscale = 1
