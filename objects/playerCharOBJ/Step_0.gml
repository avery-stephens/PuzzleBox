/// @description Insert description here
// You can write your code in this editor

//input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
shoot_key = mouse_check_button_pressed(mb_left);

//movement
var _move = key_right - key_left;

horisontal_speed = _move * walk_speed;

virticle_speed += grav;

if(place_meeting(x,y + 1,ObJ_noSeeWall) && key_jump) 
{
	virticle_speed -= jump_soeed;
}

//colision
if (place_meeting(x+horisontal_speed,y,ObJ_noSeeWall))
{
	while(!place_meeting(x+sign(horisontal_speed),y,ObJ_noSeeWall))
	{
		x += sign(horisontal_speed);
		
		
	}
	horisontal_speed = 0;
	speed = -1;
	
}
x += horisontal_speed;


	

if (place_meeting(x,y + virticle_speed,ObJ_noSeeWall))
{
	while(!place_meeting(x,y + sign(virticle_speed),ObJ_noSeeWall))
	{
		y += sign(virticle_speed);
		
	}
	virticle_speed = 0;
	vspeed = 0;
	speed = 0;
	
}


