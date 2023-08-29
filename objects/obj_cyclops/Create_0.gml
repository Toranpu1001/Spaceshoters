/// @description Insert description here
// You can write your code in this editor

event_inherited()

explosion = obj_impacto3

chance = 30;

var _vel_cyclops = 3;

vspeed = _vel_cyclops

posso_me_mover = true;

pontos = 15;//definindo seus pontos;

shooting = function()
{	//criando a instancia tiro
	instance_create_layer(x, y, "Fires", obj_cyclops_fire);
}

alarm[0] = 60;




























