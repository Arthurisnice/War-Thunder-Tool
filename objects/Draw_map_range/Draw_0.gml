if click_counter=2
{
	draw_line_width_color(pos_x_arr[0],pos_y_arr[0],pos_x_arr[1],pos_y_arr[1],3,c_red,c_red)
}

if click_counter==3
{
	draw_set_alpha(0.5)
	if O_mouse.area==true 
	{
		draw_circle_color(mouse_x,mouse_y,3,c_red,c_red,false)
	}
	draw_set_alpha(1)
}

if click_counter==1
{
	draw_circle_color(pos_x_arr[0],pos_y_arr[0],3,c_red,c_red,false)
	draw_set_alpha(0.5)
	if O_mouse.area==true 
	{	
		draw_circle_color(mouse_x,mouse_y,3,c_red,c_red,false)
	}
	draw_set_alpha(1)
}

if click_counter==2
{
	draw_circle_color(pos_x_arr[0],pos_y_arr[0],3,c_red,c_red,false)
	draw_circle_color(pos_x_arr[1],pos_y_arr[1],3,c_red,c_red,false)
}

draw_self()

draw_set_font(Font1)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var obj = Draw_map_square
if click_counter==2
{
	var dis = point_distance(pos_x_arr[0],pos_y_arr[0],pos_x_arr[1],pos_y_arr[1])
	draw_set_color(c_black)
	draw_text(x,y,round(dis/range_array[image_loader.amount]))
	draw_set_color(c_white)
}
