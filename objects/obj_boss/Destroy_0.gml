/// @description Insert description here
// You can write your code in this editor


//criando a sequencia de morte

layer_sequence_create("boss_die", x, room_height/2 - 32, sqn_boss_die);


global.total_enemies++;


ganha_pontos(pontos);

audio_pause_sound(snd_boss_fight);






























