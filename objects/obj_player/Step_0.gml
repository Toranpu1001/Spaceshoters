/// @description Insert description here
// You can write your code in this editor

var _velh, _velv


_velh = keyboard_check(ord("D")) - keyboard_check(ord("A"));
_velv = keyboard_check(ord("S")) - keyboard_check(ord("W"));



//Fazendo o player se mover.
y += _velv*vel
x += _velh*vel


shooting();

if(!my_shield)
{
	shield();
}


x = clamp(x, 64, 1856);
y = clamp(y, 64, 1024);


//if (keyboard_check_pressed(vk_up) && level_fire < 5)
//{
	
//	level_fire++;
	
//}
//if (keyboard_check_pressed(vk_down) && level_fire > 1)
//{
	
//	level_fire--;
	
//}


//Diminuir o cooldown do tiro em 10% se eu apertei a seta para a esquerda.
//Irá diminuir o cooldown até o valor do própio ser menor ou igual a 8
//if(keyboard_check_pressed(vk_left) && cooldown > 20){
//	cooldown *= .9;	
//}
//Aumentar o cooldown do tiro em 10% se eu apertei a seta para a direita.
//Irá aumentar o cooldown até o valor do própio ser for maior ou igual a 17
//else if(keyboard_check_pressed(vk_right)){
//	cooldown *= 1.1;

//}




