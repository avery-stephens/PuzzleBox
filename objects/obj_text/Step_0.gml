/// @description Insert description here
// You can write your code in this editor

letters += spd;
text_current = string_copy(Text, 1,floor(letters));

draw_set_font(fnt_txt);
if(h == 0) h = string_height(Text);
w = string_width(text_current);

if(letters >= length) && (keyboard_check_pressed(vk_anykey))
{
	instance_destroy();
	with(obj_camera) follow = Obj_PLayer;
}



