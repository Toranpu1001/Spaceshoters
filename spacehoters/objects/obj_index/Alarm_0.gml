/// @description Insert description here
// You can write your code in this editor


//Criar inimigo
var _repetir = 5 * level;//criando um variável que de acordo com level 
//ela mutliplica a quantidade de inimigos gerados
if(!instance_exists(obj_polvo))
{
	repeat(_repetir)//repetindo o mesmo código
	{
		cria_inimigo();
	}
}

alarm[0] = room_speed * 4





























