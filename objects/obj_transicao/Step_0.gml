/// @description Insert description here
// You can write your code in this editor


if(!trade_room)
{
	alpha += .02;
}
else
{
	//troquei de room, eu diminuo o alpha
	alpha -= .02;	
}

if (alpha >= 1 && !trade_room)
{
	room_goto(destino);
}


if(trade_room && alpha <= 0)
{
	instance_destroy()
}



































