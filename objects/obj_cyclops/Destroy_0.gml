/// @description Insert description here
// You can write your code in this editor

event_inherited()

//Criando o impacto ao morrer

instance_create_layer(x, y, "inimigos", explosion);

instance_create_layer(x,y,"player",obj_screnshake);






























// Inherit the parent event
event_inherited();

