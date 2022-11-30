/// @description Insert description here
// You can write your code in this editor

if(Obj_PLayer.ivf <=0){
    lives = lives - 5;
	audio_play_sound(playerHurt,1000,false);
    Obj_PLayer.ivf = 120;
}
