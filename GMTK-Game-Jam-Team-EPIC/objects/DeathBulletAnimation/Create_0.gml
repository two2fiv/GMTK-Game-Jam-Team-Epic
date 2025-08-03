rpx = x-AnimatedGun.x
rpy = y-AnimatedGun.y

bspeed = 4

angle = arctan2(rpx,rpy)
angle = (radtodeg(angle)+90)

xspd=cos(degtorad(angle))*bspeed
yspd=sin(degtorad(angle))*-1*bspeed

image_xscale = 0.1
image_yscale = 0.1

moving = 0

atk = 0