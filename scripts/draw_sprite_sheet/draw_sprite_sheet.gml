/// @function                draw_sprite_sheet(sprite,index,w_sprite,h_sprite,w_sheet,h_sheet,_x,_y,scale_x,scale_y,color,alpha)
/// @description			 Draws sprite from sprite sheet.
/// @param {sprite_index} sprite  Sprite index of the sprite_sheet to draw
/// @param {Real} index The frame of the sprite sheet in witch to draw
/// @param {Real} w_sprite The witdh of the sprite
/// @param {Real} h_sprite The height of the sprite
/// @param {Real} w_sheet The witdh of the sprite sheet in amount of sprites 
/// @param {Real} h_sheet The height of the sprite sheet in amount of sprites
/// @param {Real} _x The x position where the sprite appears
/// @param {Real} _y The y position wher the sprite appears
/// @param {Real} [scale_x] The horizontal scale of the sprite
/// @param {Real} [scale_y] The vertical scale of the sprite
/// @param {Color} [color] The color of the sprite
/// @param {Real} [alpha] The opacity of the sprite


//IMPORTANT!!!! ╰（‵□′）╯
//The sprites will be read in a row order, so the first row, then second, then third, etc

function draw_sprite_sheet(sprite,index,w_sprite,h_sprite,w_sheet,h_sheet,_x,_y,scale_x=1,scale_y=1,color=c_white,alpha=1)
{
	static top = 0
	static line = 1
	
	if index+1>w_sheet*line {line++}
	top=64*(line-1)
	index=index-w_sheet*(line-1)
	if index-1<0 && line>1 {line--}
	if index<0 && line==1 {index=0}
	var left = w_sprite*index
	
	draw_sprite_part_ext(sprite,0,left,top,w_sprite,h_sprite,_x,_y,scale_x,scale_y,color,alpha)
}