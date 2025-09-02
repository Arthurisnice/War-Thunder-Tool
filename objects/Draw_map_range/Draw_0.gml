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
	var dir = point_direction(pos_x_arr[0],pos_y_arr[0],pos_x_arr[1],pos_y_arr[1])
	draw_sprite_ext(S_saquare,0,pos_x_arr[1],pos_y_arr[1],deviation,2,dir,c_white,1)
}

draw_self()

draw_set_font(Font2)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var obj = Draw_map_square
if click_counter==2
{
	var dis = point_distance(pos_x_arr[0],pos_y_arr[0],pos_x_arr[1],pos_y_arr[1])
	draw_set_color(c_black)
	var str_temp = round(dis/image_loader.list[image_loader.amount].map_value)
	draw_text(x,y,string(str_temp)+"m")
	draw_set_color(c_white)
}

