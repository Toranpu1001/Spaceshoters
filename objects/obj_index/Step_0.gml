/// @description Insert description here
// You can write your code in this editor


if(!instance_exists(obj_player) && !gameover_seq && !level_end)
{
	//criando a minha sequence
	//Criando apenas UMA sequence
	gameover_seq = layer_sequence_create("sequences", room_width/2, room_height/2,sqn_game_over)
	audio_play_sound(sfx_lose, 1, false);
}































