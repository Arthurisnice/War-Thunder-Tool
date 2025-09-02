/// @function                get_text(text_to,string_lenght,timer_optional)
/// @description             Gets keyboard input to text. Example text_1 = get_text(text_1)
/// @param {String} text_to  Text that will recive the input.
/// @param {Real} [string_lenght] Lenght of string before linebreak. Default=50
/// @param {Real}  [timer_optional] Frames before backspace mass deletes. Default=30
/// @return {String} The text input from keyboard.

function get_text(text_to,string_lenght=500000,timer_optional=30)
{
    static timer_x=0
    static _line=1
    if string_length(keyboard_string)>1 {keyboard_string=""}
    var len = string_length(keyboard_string) 
	if string_length(text_to)<50
	{
		text_to+=string_copy(keyboard_string,len,len) 
	}
	if keyboard_check_pressed(vk_backspace) && keyboard_check(vk_control) {keyboard_string="";return "";_line=1;}
    if keyboard_check_pressed(vk_backspace) && string_length(text_to)>0 && timer_x<timer_optional {text_to=string_copy(text_to,0,string_length(text_to)-1);}
    else if keyboard_check(vk_backspace) && string_length(text_to)>0 && timer_x>timer_optional {text_to=string_copy(text_to,0,string_length(text_to)-1);}
    if timer_x>0 && !keyboard_check(vk_backspace) {timer_x--}
    if keyboard_check(vk_backspace) {timer_x++}
    keyboard_string=""
    
    if _line<=0{_line=1;}
    
    if string_length(text_to)<string_lenght*(_line-1) && string_length(text_to)>0 {_line--;}
    
    if _line==1 
    {
        if string_length(text_to)>string_lenght-1 {_line++;  return string(text_to)+"\n"}
    }
    else
    {
        if string_length(text_to)>string_lenght*_line {_line++;  return string(text_to)+"\n"}
    }
	return string(text_to)
}