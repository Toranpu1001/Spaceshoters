/// @description Insert description here
// You can write your code in this editor

event_inherited()

explosion = obj_impacto3

chance = 30;

var _vel_cyclops = 3;

vspeed = _vel_cyclops

posso_me_mover = true;

pontos = 50;//definindo seus pontos;

shooting = function()
{	//criando a instancia tiro
	if( y > 0 )
	{
		instance_create_layer(x, y, "Fires", obj_cyclops_fire);
		audio_play_sound(sfx_laser1, 1, false);//audio do tiro
	}
}

alarm[0] = 60;




























