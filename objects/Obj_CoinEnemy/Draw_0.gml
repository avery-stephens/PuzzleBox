/// @description Insert description here
// You can write your code in this editor

if !(is_hit) draw_self();

if(is_hit){
gpu_set_fog(true, c_red, 0, 0);
draw_self();

gpu_set_fog(false, c_orange, 0, 0);
}



