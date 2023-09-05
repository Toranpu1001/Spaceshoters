/// @description Insert description here
// You can write your code in this editor
if(current_state != "state 4")
{
	sprite_index = spr_boss_combat
}
//Debug do estado atual
//Alternando os estados
//Deminiuindo a espera do estado
if (keyboard_check(vk_enter))
{
	life -= 10;
}

change_state();

if (current_state == "state 1")
{
	state_01();
}
else if (current_state == "state 2")
{	
	state_02();
}
else if (current_state == "state 3")
{
	state_03();
}
else if(current_state == "state 4")
{
		state_04();
		sprite_index = spr_boss_black
}


x += sign( room_width/2 - x );

if(loading)
{
	life += life_max * .01;
	
	if(life > life_max)
	{
		loading = false;
	}
}






























