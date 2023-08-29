/// @description Insert description here
// You can write your code in this editor

//Me desenhando
draw_self();

gpu_set_blendmode(bm_add);

draw_sprite_ext(spr_blur_enemie,image_index, x, y, image_xscale*.7, image_yscale*.7, image_angle, c_green, .4);

gpu_set_blendmode(bm_normal);

























