/// @description Insert description here
// You can write your code in this editor

//inputs
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
shoot_key = mouse_check_button_pressed(mb_left);



//gravity
if(y_vel < max_gravity){	
	y_vel = y_vel + y_gravity;
}

//movement
var _move = key_right - key_left;

x_vel = _move * run_speed;

if(place_meeting(x,y + 1,ObJ_noSeeWall) && key_jump) 
{
	y_vel -= jump_vel;
}

//colision
if (place_meeting(x+x_vel,y,ObJ_noSeeWall))
{
	while(!place_meeting(x+sign(x_vel),y,ObJ_noSeeWall))
	{
		x += sign(x_vel);
		
		
	}
	x_vel = 0;
	speed = -1;
	
}
x += x_vel;


	

if (place_meeting(x,y + y_vel,ObJ_noSeeWall))
{
	while(!place_meeting(x,y + sign(y_vel),ObJ_noSeeWall))
	{
		y += sign(y_vel);
		
	}
	y_vel = 0;
	vspeed = 0;
	speed = 0;
	
}
y += y_vel;
