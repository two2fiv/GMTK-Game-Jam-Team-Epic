if ysp < 0 {
			ysp+=0.18
		}
		else {
			ysp+=0.3
		}

x+=xsp
if y+ysp >= 352{
y=352
global.bossAtk = 1
if slime = oLandCrawler2{
instance_create_layer(x,y,"Enemies",oLandCrawler2)
}
else{
	instance_create_layer(x,y,"Enemies",oLandWeapon1)
}
global.bossAtk = 1
instance_destroy()
}
else{
y+=ysp
}
