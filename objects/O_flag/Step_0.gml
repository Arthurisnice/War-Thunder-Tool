if place_meeting(x,y,O_mouse) && mouse_check_button_pressed(mb_left)
{
	
	image_index++
	val++
	if val>=2 {val=0}
	image_xscale=0.9
	image_yscale=0.9
}
else
{
	image_xscale=1
	image_yscale=1
}

if val==3 {image_loader.font_to=Font_uk}
if val==4 {image_loader.font_to=Font_ch}
if val==5 {image_loader.font_to=Font_jp}
else {image_loader.font_to=Font_1}