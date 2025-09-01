if click_counter=2
{
	draw_line_width_color(pos_x_arr[0],pos_y_arr[0],pos_x_arr[1],pos_y_arr[1],3,c_white,c_white)
}

if click_counter==3 
{
	draw_set_alpha(0.5)
	if O_mouse.area==true 
	{
		draw_circle_color(mouse_x,mouse_y,3,c_aqua,c_aqua,false)
	}
	draw_set_alpha(1)
}

if click_counter==1 
{
	draw_circle_color(pos_x_arr[0],pos_y_arr[0],3,c_aqua,c_aqua,false)
	draw_set_alpha(0.5)
	if O_mouse.area==true 
	{
		draw_circle_color(mouse_x,pos_y_arr[0],3,c_aqua,c_aqua,false)
	}
	draw_set_alpha(1)
}

if click_counter==2 
{
	draw_circle_color(pos_x_arr[0],pos_y_arr[0],3,c_aqua,c_aqua,false)
	draw_circle_color(pos_x_arr[1],pos_y_arr[1],3,c_aqua,c_aqua,false)
}

draw_self()
draw_set_font(Font1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x,y,amount)


