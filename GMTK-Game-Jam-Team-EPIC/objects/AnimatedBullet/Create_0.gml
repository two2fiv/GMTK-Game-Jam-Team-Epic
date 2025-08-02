
bspeed=8
angle = AnimatedGun.image_angle

xspd=cos(degtorad(angle))*bspeed
yspd=sin(degtorad(angle))*-1*bspeed
image_angle=angle+180
x+=xspd*2
y+=yspd*2

initialX=x
initialY=y

rix = x-initialX
riy = y-initialY

initdist = 0

bRad = 600
image_xscale = 1
image_yscale = 1
switch global.hasGun{
	case 1:
		sprite_index = sBullet
	break
	case 2:
		sprite_index = sBeegBullet
		global.bulletIdx+=1
		if global.bulletIdx !=3{
			image_xscale = .8
			image_yscale = .8
		}
	break
}

