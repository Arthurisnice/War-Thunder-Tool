draw_self()

draw_set_font(image_loader.font_to)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

if image_loader.text_txt!=""
{
draw_text(x,y+sprite_height/2+10,image_loader.list[image_index].map_name)
}