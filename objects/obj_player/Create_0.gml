/// @description Insert description here
// You can write your code in this editor

cooldown = room_speed / 2

level_fire = 1;

vel = 7

life = 3;

qnt_shield = 3;

my_shield = noone
shooting = function()
{
	var _fire = keyboard_check(vk_space)
	var _fire_click = mouse_check_button(mb_left);
	//Fazendo o player atirar.

	if ((_fire || _fire_click) && alarm[0] == -1)
	{	
		alarm[0] = cooldown
	
	if(level_fire == 1)
	{
		instance_create_layer(x, y - sprite_height/2, "Fires", obj_fire);
	}
	
	else if(level_fire == 2)
	{	
		fire2();
	}
	
	else if(level_fire == 3)
	{
		instance_create_layer(x, y - sprite_height/2, "Fires", obj_fire);
		fire2();
	}
	
	else if(level_fire == 4)
	{
		fire4();
	}
	
	else if(level_fire == 5)
	{
		fire2();
		fire4();
	}
}
}


fire2 = function()
{
		var _y_fire = y - sprite_height/3;
		//Tiro da esquerda
		var _left =	instance_create_layer(x -50,_y_fire, "Fires", obj_fire2);
		_left.hspeed = -5;//fazend o tiro da esquerda ir para esquerda;-;
		
		//Tiro da direita
		var _right = instance_create_layer(x +50, _y_fire, "Fires", obj_fire2);
		_right.hspeed = 5;//fazendo o tiro da direita ir para direita;-;
}
	
fire4 = function()
{
		var _direction = 75;
		
		repeat(3)
		{
		var _fire4 = instance_create_layer(x, y - sprite_height/2, "Fires", obj_fire);
		
		_fire4.direction = _direction
		_fire4.image_angle = _fire4.direction - 90// o angulo da imagem será 
												//o mesmo de sua redireção
		
		_direction += 15;//somára a cada repetição um valor de 15 graus
		}
}
///@method level_up(chance)
level_up = function(_chance)
{
	if(_chance >= 90)
	{
		if(level_fire < 5)
		{
			level_fire++;
		}
		else
		{
			ganha_pontos(100);
		}
	}
	else if (_chance >= 45)
	{
		if(cooldown >= 20)
		{
			cooldown *= .9;
		}
		else
		{
			ganha_pontos(10);	
		}
	}
	else
	{
		if(vel < 12)
		{
			vel *= 1.5;
		}
		else
		{
			ganha_pontos(10);	
		}
	}
}

///@method shield
shield = function()
{
	var _shield = keyboard_check_pressed(vk_control)
		
		if(_shield && qnt_shield > 0)
		{
		var _escudo = instance_create_layer(x, y, "escudo", obj_shield);	
		
		_escudo.alvo = id;
	
		 my_shield = shield; //avisando que esse escudo é meu escudo
		
		 qnt_shield--;
		}
}	
///@method perde_vida
perde_vida = function()
{
	if(!my_shield)
	{
		if(life > 0)
		{
			life--;
			
		}	
else
		{
			instance_destroy();
			global.total_dies++;
		}
	}
}










