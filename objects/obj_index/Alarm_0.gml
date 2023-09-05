/// @description Insert description here
// You can write your code in this editor


//Criar inimigo
var _repetir = 5 * level;//criando um variável que de acordo com level 
//ela mutliplica a quantidade de inimigos gerados
//Se não tiver inimigos e o level for menor que 10
//ele repete ó codigo
if(!instance_exists(obj_polvo))
{
	if(level < 10)
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
		audio_pause_sound(snd_level);
		layer_sequence_create("boss_animation", 960, 512, sqn_boss_chegando);	
		go_boss = false;
	}
}
}

alarm[0] = room_speed * 4





























