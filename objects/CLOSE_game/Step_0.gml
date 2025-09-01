if place_meeting(x,y,O_mouse) && mouse_check_button(mb_left)
{
	image_xscale=0.9
	image_yscale=0.9
	click=true
}
else if place_meeting(x,y,O_mouse) && !mouse_check_button(mb_left) && click==true
{
	image_xscale=1
	image_yscale=1
	game_end()
}
else 
{
	image_xscale=1
	image_yscale=1
	click=false
}
