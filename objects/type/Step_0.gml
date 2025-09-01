if place_meeting(x,y,O_mouse) && mouse_check_button_pressed(mb_left)
{
	type_to++
}
if type_to>2 {type_to=0}
image_index=type_to

if type_to==1 {window_set_fullscreen(true)}
else if type_to==2 {window_set_fullscreen(true); window_enable_borderless_fullscreen(true)}
else {window_set_fullscreen(false); window_enable_borderless_fullscreen(false)}


if place_meeting(x,y,O_mouse) && mouse_check_button(mb_left)
{
	image_xscale=0.9
	image_yscale=0.9
}
else
{
	image_xscale=1
	image_yscale=1
}