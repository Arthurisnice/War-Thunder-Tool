image_index=image_loader.end_result[2]
if place_meeting(x,y,O_mouse) && mouse_check_button_pressed(mb_left) 
{
	image_loader.amount=image_loader.end_result[2]
	image_xscale=og_scale-0.02
	image_yscale=og_scale-0.02
}
else
{
	image_xscale=og_scale
	image_yscale=og_scale
}