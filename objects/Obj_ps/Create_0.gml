/// @description Insert description here

/// @description particle system definitions

 

global.P_System = part_system_create_layer("Instances", false);

 

// explosion

global.Explosion = part_type_create();

 

// This defines the particle's shape

part_type_shape(global.Explosion, pt_shape_pixel);

 

// This is for the size

part_type_size(global.Explosion, 1, 4, 0, 2);

 

// This sets its colour. There are three different codes for this

part_type_color1(global.Explosion, c_green);

// This is its alpha. There are three different codes for this

part_type_alpha1(global.Explosion, 1);

 

// The particles speed

part_type_speed(global.Explosion, 0.50, 5, -0.05, 0);

 

// The direction

part_type_direction(global.Explosion, 0, 359, 0, 20);

 

// This changes the rotation of the particle

part_type_orientation(global.Explosion, 0, 0, 0, 0, true);

 

// This is the blend mode, either additive or normal

part_type_blend(global.Explosion, true);

 

// This is its lifespan in steps

part_type_life(global.Explosion, 5, 60);

// ////////////////////////////////////////////////////

// stream

global.Stream = part_type_create();

 

// This defines the particle's shape

part_type_shape(global.Stream, pt_shape_pixel);

 

// This is for the size

part_type_size(global.Stream, 1, 4, 0, 2);

 

// This sets its colour. There are three different codes for this

part_type_color1(global.Stream, c_green);

 

// This is its alpha. There are three different codes for this

part_type_alpha1(global.Stream, 1);

 

// The particles speed

part_type_speed(global.Stream, 0.5, 1, -0.1, 0);

 

// The direction

part_type_direction(global.Stream, 0, 359, 0, 20);

 

// This changes the rotation of the particle

part_type_orientation(global.Stream, 0, 0, 0, 0, true);

 

// This is the blend mode, either additive or normal

part_type_blend(global.Stream, true);

 

// This is its lifespan in steps

part_type_life(global.Stream, 5, 20);

