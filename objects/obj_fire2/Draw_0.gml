/// @description Insert description here
// You can write your code in this editor

//Me desenhando
draw_self();

//Desenhando o brilho
gpu_set_blendmode(bm_add);//Alterando como o video trata as cores
draw_sprite_ext(brilho2, image_index, x, y-8, image_xscale * .7, image_yscale * .7,image_angle, cores, .4);
gpu_set_blendmode(bm_normal);//Voltando ao normal




































