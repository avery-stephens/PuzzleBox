/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_txt);
draw_set_colour(c_black);

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

draw_text(cx + (cw / 6), cy + 25, string(extraTxt) + string(score));
draw_text(cx + (cw - 125) , cy + 25, string("Lives: ") + string(lives))


