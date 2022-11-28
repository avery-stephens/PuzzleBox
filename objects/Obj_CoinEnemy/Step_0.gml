/// @description Insert description here
// You can write your code in this editor

//update state
switch(state)
{
	case estate.patrol:
	if(distance_to_object(Obj_PLayer) < 150) state = estate.chase;
	break;
	case estate.chase:
	x_vel = sign(Obj_PLayer.x - x);
	run_speed = 3;
	if(distance_to_object(Obj_PLayer) > 150) state = estate.idol;
	break;
	case estate.attack:
	break;
	case estate.idol:
	x_vel = choose(-run_speed ,run_speed);
	state = estate.patrol;
	break;
}
//gravity
if(y_vel < max_gravity){	
	y_vel = y_vel + y_gravity;
}


// stop enemy form walking off a cliff
///

// Horizontal collision
if (place_meeting(x + x_vel, y, ObJ_noSeeWall)) or (place_meeting(x + x_vel, y, Obj_enemyWall)){
    while (!place_meeting(x + sign(x_vel), y, ObJ_noSeeWall)) and (!place_meeting(x + sign(x_vel), y, Obj_enemyWall)){
        x += sign(x_vel);
    }
    x_vel = -x_vel;
}
x += x_vel;

// Verticle collision
if (place_meeting(x, y + y_vel, ObJ_noSeeWall)) or  (place_meeting(x, y + y_vel, Obj_enemyWall)) {
    while (!place_meeting(x, y + sign(y_vel), ObJ_noSeeWall)) and  (!place_meeting(x, y + sign(y_vel), Obj_enemyWall))   {
        y += sign(y_vel);
    }
    y_vel = 0;
}
y += y_vel;

//if (x_vel !=0) image_xscale = sign(x_vel);

// death
if (hp) <= 0
{
	audio_sound_pitch(enemy_Death, random_range(0.8, 1.2));
	audio_play_sound(enemy_Death, 1, false);
    instance_destroy();
}
