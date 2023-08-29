/// @description Insert description here
// You can write your code in this editor
life = 10;

//Iniciando o alarme
alarm[0] = room_speed*3

image_alpha = 0;
first_fire = false;

image_angle = 0;

change = 1
change_scale = .01;
lose_life = function()
{
	if(life > 1)
	{
		life--;
		image_alpha -= .05;
		change_scale *= 1.3;
	}
	else
	{
		instance_destroy()
	}
}
if(place_meeting(x, y, obj_boss_minion))
{
	y -= 120
}































