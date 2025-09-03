#macro view view_camera[0]

view_width=1366*zoom_val
view_height=768*zoom_val

camera_set_view_size(view,view_width,view_height)

var x_to = (follow_x-x)/25
var y_to = (follow_y-y)/25
x=follow_x
y=follow_y


_x += ((follow_x-(view_width/2))-_x)/speed_z
_y += ((follow_y-(view_height/2))-_y)/speed_z
	 
camera_set_view_pos(view,_x,_y)


    