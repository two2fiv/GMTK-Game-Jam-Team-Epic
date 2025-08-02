if FinalBossAnimation.phase != 0{
rbx = x-FinalBossAnimation.x
rby = y-(FinalBossAnimation.y+198)

angle = arctan2(rbx,rby)
angle = radtodeg(angle)+90

angle =clamp(angle,0,75)

image_angle = angle



}