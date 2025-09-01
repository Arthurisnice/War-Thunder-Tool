if place_meeting(x,y,O_mouse) && mouse_check_button_pressed(mb_left) 
{
	img_file = get_open_filename("*.jpeg|*.png", "");
	sprite_replace(my_cool_image,img_file,1,false,false,0,0)
}

if place_meeting(x,y,O_mouse)
{
	if image_index<6 {image_speed=1}
	else {image_speed=0;}
}
else if image_index!=0 {image_speed=-1}
else {image_index=0; image_speed=0}