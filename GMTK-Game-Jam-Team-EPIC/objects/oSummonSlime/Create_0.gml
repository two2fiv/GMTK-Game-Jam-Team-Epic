image_xscale = -1
xsp = -6
ysp = -4
x = 480
y = 156

if !instance_exists(oLandWeapon1){
	slime = irandom(1)
	if slime = 1{
		slime = oLandWeapon1
	}
	else{
		slime = oLandCrawler2	
	}
}
else{
slime = oLandCrawler2	
}

if slime = oLandCrawler2{
sprite_index = LandCrawler2Unphased	
}
else{
sprite_index = sLandWeaponWithGun	
}