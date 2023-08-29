/// @description Insert description here
// You can write your code in this editor


fire_speed = 20;

vspeed -= fire_speed; 

image_xscale = 3;
image_yscale = 3;

//alarm[0] = 1;

impact = function ()
{
	instance_create_layer(x, y, "Fires", obj_impacto);
}

//cores
cores = choose(c_aqua, c_fuchsia, c_red, c_olive, c_orange, c_green);

brilho = spr_blur_fire





















