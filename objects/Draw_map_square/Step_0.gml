if mouse_check_button_pressed(mb_left) && O_mouse.area==true {click_counter++;do_action=true}
if click_counter>3 {click_counter=1}

if do_action==true && click_counter==1
{
	do_action=false
	pos_x_arr[0]=mouse_x
	pos_y_arr[0]=mouse_y
}

if do_action==true && click_counter==2
{
	do_action=false
	pos_x_arr[1]=mouse_x
	pos_y_arr[1]=pos_y_arr[0]
}
if click_counter=2
{
	
	var dis = point_distance(pos_x_arr[0],pos_y_arr[0],pos_x_arr[1],pos_y_arr[1])
	var quat = dis/amount
	multi_val=quat
	
}

multi_val=image_loader.range_array[image_loader.amount]