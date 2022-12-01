/// @description Insert description here
// You can write your code in this editor

//update state
switch(state)
{
	case estate.patrol:
	if(distance_to_object(Obj_PLayer) < 150) state = estate.chase;
	break;
	case estate.chase:
	hsp = sign(Obj_PLayer.x - x);
	walkspeed = 3;
	if(distance_to_object(Obj_PLayer) > 150) state = estate.idol;
	break;
	case estate.attack:
	break;
	case estate.idol:
	hsp = choose(-walkspeed, walkspeed);
	state = estate.patrol;
	break;
}
//gravity
vsp = vsp + grv;

// Horizontal collision
if (place_meeting(x + hsp, y, Obj_enemyWall)) or (place_meeting(x + hsp, y, ObJ_noSeeWall)){
	while (!place_meeting(x + sign(hsp), y, Obj_enemyWall))  and (!place_meeting(x + sign(hsp), y, ObJ_noSeeWall)) {
		x += sign(hsp);
	}
	hsp = -hsp;
}
x += hsp;

// Verticle collision
if (place_meeting(x, y + vsp, Obj_enemyWall)) or (place_meeting(x, y + vsp, ObJ_noSeeWall)){
	while (!place_meeting(x, y + sign(vsp), Obj_enemyWall)) and (!place_meeting(x, y + sign(vsp), ObJ_noSeeWall)) {
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

if (hsp !=0) image_xscale = sign(hsp);

if (hp) <= 0
{
	instance_destroy();
}
// death
if (hp) <= 0
{
	with(obj_score) score = score + 1;
	audio_sound_pitch(enemy_Death, random_range(0.8, 1.2));
	audio_play_sound(enemy_Death, 1, false);
    instance_destroy();
}
