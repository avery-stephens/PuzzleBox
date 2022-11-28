/// @description Insert description here
// You can write your code in this editor


x = Obj_PLayer.x+10;
y = Obj_PLayer.y;

image_angle = point_direction(x,y,mouse_x, mouse_y);

fire_delay = fire_delay - 1;
if(mouse_check_button(mb_left)) and (fire_delay < 0){

    fire_delay = 7.5;
    with(instance_create_layer(x,y,"bullets", Obj_Bullet)){
		audio_play_sound(moneyShoot,1000,false);
        speed = 25;
        direction = other.image_angle + random_range(-3,3);
        image_angle = direction;
    }
}