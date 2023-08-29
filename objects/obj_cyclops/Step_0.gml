/// @description Insert description here
// You can write your code in this editor

if(y > room_height + 100)
{
	instance_destroy(id, false);
}
var _velh = 0;

if( y > random_range(384 , 635) && posso_me_mover)
{
	if(x < room_width/2){
		_velh = random_range(5, 10)
		hspeed = _velh;
		posso_me_mover = false;

	}
	
	else
	{
		_velh = random_range(5, 10)
		hspeed = -_velh;
		posso_me_mover = false;

	}
}	






























// Inherit the parent event
event_inherited();

