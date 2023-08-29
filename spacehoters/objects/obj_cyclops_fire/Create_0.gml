/// @description Insert description here
// You can write your code in this editor
event_inherited()
//Definindo minha direção
speed = 6;

image_xscale = 5;
image_yscale = 7;

//Irá na direção do jogador se a caso ele tiver vivo
if(instance_exists(obj_player))
{
	direction = point_direction(x,y,obj_player.x,obj_player.y);
}

image_angle = direction + 90;





























