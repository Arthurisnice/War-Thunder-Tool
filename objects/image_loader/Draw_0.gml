draw_sprite_stretched(spr_sheet,amount,340,85,600,600)
draw_self()

draw_text(635, 60,list[amount].map_name);

draw_set_font(Font2)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if searching==true
{
	text_txt = get_text(text_txt)
	draw_text(x,y+75,text_txt)
	for (var l=0; l<2; l++)
	{
	
	var list_temp = json_list[l].maps
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
}
else {text_txt=""; string_val+=(0-string_val)/10}