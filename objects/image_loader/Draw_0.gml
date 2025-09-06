draw_sprite_stretched(spr_sheet,amount,340,85,600,600)
draw_self()



draw_set_font(font_to);

draw_text(640, 60,list[amount].map_name);

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if searching==true
{
	text_txt = get_text(text_txt)
	draw_text(x,y+75,text_txt)
	for (var l=0; l<array_length(word_array); l++)
	{
	
		var list_temp = json_list[O_flag.val].maps
		for (var i=0;i<array_length(list);i++)
		{
			if (string_pos(string_lower(text_txt), string_lower(list_temp[i].map_name)) > 0)
			{
				
				end_result[qtt]=list[i].map_index
				qtt++
				if qtt>=6 {qtt=0; break;}
			}
		}
	}
	var leng = string_width(text_txt)/2
	string_val+=((leng)-string_val)/10
	draw_line(x-string_val-3,y+85,x+string_val+1,y+85)
	spin+=2
	extra+=(10-extra)/50
}
else {string_val+=(0-string_val)/10; extra+=(30-extra)/25}

if searching==false && spin!=0 
{
	spin+=4
}

if spin>360 {spin=0}

var _x = x+extra+lengthdir_x(10,spin)
var _y = y-extra+lengthdir_y(10,spin)

draw_sprite(S_mag_glass,0,_x,_y)

//draw_text(640,700,json_list[6].texts[O_flag.val] + "vel_ha")
