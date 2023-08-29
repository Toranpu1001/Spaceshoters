/// @description Insert description here
// You can write your code in this editor


//movendo a tela
view_xport[0] = random_range(-shake, shake);
view_yport[0] = random_range(-shake, shake);

//diminuindo o valor do screenshake
//multiplicando ele por 0.95, ele perde 5% por step

shake *= .9;

if(shake < .5)
{
	instance_destroy();
}

































