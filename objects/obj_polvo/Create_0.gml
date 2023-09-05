/// @description Insert description here
// You can write your code in this editor

vel_polvo = 3;

pontos = 40;

explosion = obj_impacto2;

chance = 20;
//fazendo o polvo descer
vspeed += vel_polvo;

///@method shooting
shooting = function()
{
	if(y > 0)
	{
		instance_create_layer(x - 4, y + sprite_height/2, "Fires", obj_polvo_fire);
		audio_play_sound(sfx_laser1, 1, false);//audio do tiro
	}
}
//Iniciando o alarme com um tempo entre 1 e segundos
alarm[0] = room_speed * random_range(1, 3);

//Checando se eu estou colidindo com algum outro inimigo
//SE eu colidir com alguém eu me destruo
if(place_meeting(x,y, obj_polvo)){
	//Não executando o evento destroy
	instance_destroy(id, false)
}

///@method chance_drop(chance de dropar)
chance_drop = function(_chance){
	
	var _dropar =  irandom(100)
	
	if(_dropar < _chance && y > 96){
		
		instance_create_layer(x, y, "Fires", obj_power_up);

}
}





















