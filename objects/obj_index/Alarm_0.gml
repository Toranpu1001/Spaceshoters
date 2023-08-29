/// @description Insert description here
// You can write your code in this editor


//Criar inimigo
var _repetir = 5 * level;//criando um variável que de acordo com level 
//ela mutliplica a quantidade de inimigos gerados
if(!instance_exists(obj_polvo) && level < 10)
{
	repeat(_repetir)//repetindo o mesmo código
	{
		cria_inimigo();
	}
}
else
{
	if(go_boss)
	{
		layer_sequence_create("boss_animation", 960, 512, sqn_boss_chegando);	
		go_boss = false;
	}
}

alarm[0] = room_speed * 4





























