/// @description Insert description here
// You can write your code in this editor

randomize();//randozimando o jogo 
alarm[0] = room_speed * random_range(1, 3)
go_boss = true;

pontos = 0;//iniciando sistema de pontots

level = 1;//Iniciando o sistema de levels

prox_level = 100;//Pontos que precisa para próximo level

gameover_seq = noone; //variável de controle para minha sequência

level_end = false;
//Criando uma função
///@method ganhando_pontos(pontos)
ganhando_pontos = function(_pontos)
{
	pontos += _pontos * level;
	//Ganhando level SE pontos forem maior que próximo level
	if(pontos>prox_level)
	{
		level++;
		
		prox_level *= 2;//dobrando o próximo level
	}
		
	
}

cria_inimigo = function()
{
	//DEfinindo a posição x e y do inimigo
	var _xx = random_range(60, 1850) + 50;
	//Aumentado o limite com base no level do jogo
	var _yy = random_range(-40, -1600 - (level * 700)) + 20;

	//escolhendo a chance de criar cada inimigo
	var _chance = random_range(0, level)
	
	//defindindo qual inimigo vou criar
	var _inimigo = obj_polvo
	
	//se o valor foi maior que 2, criar inimigo 2
	if(_chance > 2)
	{
		_inimigo = obj_cyclops
	}
	//Criando o inimigo na posição definida
instance_create_layer(_xx, _yy, "inimigos", _inimigo);

alarm[0] = room_speed*random_range(1, 3);
}





















