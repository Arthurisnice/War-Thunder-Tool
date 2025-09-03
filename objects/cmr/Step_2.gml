#macro view view_camera[0]

view_width=460*zoom_val
view_height=261*zoom_val

camera_set_view_size(view,view_width,view_height)

var x_to = (follow.x-x)/25
var y_to = (follow.y-y)/25
x=follow.x
y=follow.y

if screen_shake==true
{
	screen_shake_timer++
	extra=random(10)
}
if screen_shake_timer>=10 {screen_shake_timer=0; extra=0; screen_shake=false}

if instance_exists(follow)
{
	 _x += ((follow.x-(view_width/2))-_x)/speed_z
	 _y += ((follow.y-(view_height/2))-_y)/speed_z
	 
	 _x=clamp(_x,0,room_width)
	_y=clamp(_y,0,room_height)
	 
	camera_set_view_pos(view,_x+extra,_y+extra)
}

if keyboard_check_pressed(ord("L"))
{
	x=mouse_x
	y=mouse_y
}
    