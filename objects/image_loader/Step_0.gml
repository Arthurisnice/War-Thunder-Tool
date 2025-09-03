if place_meeting(x,y,O_mouse) && mouse_check_button_pressed(mb_left) 
{
	if searching==true {searching=false}
	else if searching==false {searching=true; text_txt=""}
}
if searching==true
{
	if image_index!=6
	{
		image_index++
	}
}
else
{
	if image_index!=0
	{
		image_index--
	}
}

list = json_list[O_flag.val].maps;