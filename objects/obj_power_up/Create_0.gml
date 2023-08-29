/// @description Insert description here
// You can write your code in this editor

//Criando uma chance entre 0 e 10 para ele decidir qual vai ser o upgrade

chance = irandom(100);//chance vai ficar entre 0 e 100
//se o valor de chance for de 90 ou mais ela criar o power up do tiro
//se o valor de chance for de 45 ou mais, ela cria o power up da velocidade
//senão ele criar o power up da cadencia do tiro
speed = 5

direction = irandom(359);

	if(chance >= 90)
	{
		image_blend = c_red
	}
	else if (chance >= 45)
	{
		image_blend = c_orange
	}
	else
	{
		image_blend = c_aqua
		
}

alarm[0] = room_speed;































