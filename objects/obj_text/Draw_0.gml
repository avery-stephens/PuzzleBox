/// @description Insert description here
// You can write your code in this editor

var halfw = w * 0.5;
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-halfw-border,y-h-(border*2), x+halfw+border,y,15,15,false);

draw_sprite(spr_lil_triangle,0,x,y+1);
draw_set_alpha(1);

draw_set_colour(c_yellow);
draw_set_font(fnt_txt);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(x,y-h-border,text_current);


