if AnimatedPlayerFirstFight.state == 3 and phase == 0{
	phase+=1	
	audio_play_sound(GroundShakeBoss,1,0)
}
if wait = 0{
	if AnimatedPlayerFirstFight.state == 3{
		if phase == 1{
			if x>416{
				x-=6
			}
			else{
				x+=6
			}
			y+=2
			if y<pauseHeight{
				wait = 1
				alarm[1] = 20
			}
			if y>pauseHeight{
				pauseHeight += 12
				wait = 1
				alarm[1] = 60
			}
			if pauseHeight > -201{
				phase += 1	
			}
		}
		if phase == 2{
			if y<=32{
			y+=ysp	
			}
			else{
			move_and_collide(0,ysp,global.solids)	
		if oldy = y{
		phase = 3	
		}
			
		if place_meeting(x,y+abs(ysp),global.solids) or place_meeting(x,y-abs(ysp),global.solids){
			ysp=0
		}
			}
		oldy = y
			

		ysp+=0.3
		
		}
	}
}