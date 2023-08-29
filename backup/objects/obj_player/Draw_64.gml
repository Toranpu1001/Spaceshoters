/// @description Insert description here
// You can write your code in this editor

var _altura_gui = display_get_gui_height()
	
var _draw_x = 60;
var _draw_x_s = 60;

repeat(life)
{
	//Primeira fica no 40
	draw_sprite_ext(spr_player, 0, _draw_x, _altura_gui - 60,.4,.4,0, c_white, .6);
	_draw_x += 60;
}
repeat(qnt_shield)
{	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(spr_shield, 3, _draw_x_s, _altura_gui - 58,.4,.4,0, c_white, .6);
	_draw_x_s += 60;
	gpu_set_blendmode(bm_normal);
}































