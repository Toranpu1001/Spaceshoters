/// @description Insert description here
// You can write your code in this editor
/*
	Estado 1 = Parado dando o tiro 2
	Estado 2 = Movendo dando o tiro 1
	Estado 3 = parado intercalando entre o tiro 1 e 2
	
	(estado 4)
	Estado especial 1 = Ficar invulneravel enquanto cria dois minions para recuperar a vida

*/



randomize();
loading = true;

life_max = 1;

life = 1;

delay_state = room_speed*5

wait_state = delay_state

current_state = choose("state 2");

delay = room_speed/3

cooldown_fire = 0;

vel_h = 5;

control_minion = true;

tiro_02 = function()
{
	instance_create_layer(x, y + 144,"boss", obj_cyclops_fire)
}
///@method tiro_01(direita ou esquerda) 
tiro_01 = function(_direita)
{
	if(_direita)
	{
		var _posx = 160
	}
	else
	{
		var _posx = -160	
		
	}
	
	instance_create_layer(x + _posx, y + 82,"boss", obj_polvo_fire);
}

///@method state_01
state_01 = function()
{
	wait_state--;
	
	cooldown_fire--;//Diminuindo a espera do tiro
	
	//Criando o tiro se a o cooldown for menor ou igual a 0
	if(cooldown_fire <= 0)
	{
		tiro_02();
			
		cooldown_fire = delay;//Atirou!?, espera!! ;-;.
	}

}
///@method state_02
state_02 = function()
{
	wait_state--;
	x += vel_h;
	
	cooldown_fire--;
	
	if(cooldown_fire <= 0)
	{
		tiro_01(false);
		tiro_01(true);
		cooldown_fire = delay;
	}

if(x >= 1632 || x <= 288) vel_h *= -1;
}
///@method state_03
state_03 = function()
{
	wait_state--;
	
	cooldown_fire--;
	
	if(cooldown_fire <= 0)
	{
		tiro_02();
		
		cooldown_fire = delay * 2;
	}
	
	if(cooldown_fire == delay)
	{
		tiro_01(false);
	}
	if (cooldown_fire == delay + round(delay /2)) 
	{
		tiro_01(true);
	}
	
}
///@method state_04
state_04 = function()
{
	if(control_minion)
	{	
		
		var _minion = instance_create_layer(96, 640, "boss", obj_boss_minion)//left
			_minion.image_angle = 120
			_minion = instance_create_layer(1824, 640, "boss", obj_boss_minion)//right
			_minion.image_angle = -120
		control_minion = false;
	}
	if(!instance_exists(obj_boss_minion))
	{
		wait_state-= 1.5;
	}
}
///@method change_state
change_state = function()
{

if(wait_state <= 0) 
{
	control_minion = true;
	
	if(life > life_max / 2)
	{	
		current_state = choose("state 1", "state 2", "state 3");
	}
	else
	{
		current_state = choose("state 1", "state 2", "state 3", "state 4");
	}
		wait_state = delay_state;
		
}
	
}
///@method give_life
give_life = function()
{
	if(current_state == "state 4")
{
	
	if(life > 0)
	{
		life += .9;
	}
}
}


























