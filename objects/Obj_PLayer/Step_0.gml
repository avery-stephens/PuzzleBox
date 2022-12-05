/// @description Insert description here
// You can write your code in this editor

//inputs
if(hascontrol){
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
} else {
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}
//shoot_key = mouse_check_button_pressed(mb_left);

//movement
var _move = key_right - key_left;

x_vel = _move * run_speed;

y_vel = y_vel + y_gravity;

//gravity
if(y_vel < max_gravity){	
	y_vel = y_vel + y_gravity;
}

canjump -= 1;
if (canjump > 0) && key_jump {
	y_vel = -27;
	canjump = 0;
	audio_play_sound(playerJump,2,false);
}


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
	//speed = -1;
	
}
x += x_vel;

if (place_meeting(x,y + y_vel,ObJ_noSeeWall))
{
	while(!place_meeting(x,y + sign(y_vel),ObJ_noSeeWall))
	{
		y += sign(y_vel);
		
	}
	y_vel = 0;
	//vspeed = 0;
	//speed = 0;
	
}
y += y_vel;

//invincablities frames
if(ivf > 0){
ivf--;
}

if(lives <= 0)
{
	instance_destroy();
	room_goto(rm_gameOver);
	score = 0;
}

if (!place_meeting(x, y + 1, ObJ_noSeeWall)) {
	image_speed = 0;
	sprite_index = spr_playerJump;
	if (sign(y_vel) > 0) image_index = 1; else image_index = 0;
} else {
	canjump = 0;
	image_speed = 0.6;
	if (x_vel == 0) {
		sprite_index = spr_playerIdle;
	} else {
		sprite_index = spr_playerWalk;
	}
}

if(key_left)
{
	image_xscale = -1;
}

if(key_right)
{
	image_xscale = 1;
}