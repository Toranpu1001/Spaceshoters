// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function screenshake(_shake){
	//criando o screnshake
	var _screen = instance_create_layer(0, 0, "escudo", obj_screnshake);
	_screen.shake = _shake;
}

//função para ganhar pontos

function ganha_pontos(_pontos)
{
	if (instance_exists(obj_index))
	{
		obj_index.ganhando_pontos(_pontos)	
	}
}

function destroy_seq()
{
	 var _elements = layer_get_all_elements("boss_animation");
	 layer_sequence_destroy(_elements[0]);
	 
	 instance_create_layer(960, 256, "Boss", obj_boss);
}

function end_level()
{
	if(instance_exists(obj_player))
	{
		layer_sequence_create("end_level", obj_player.x, obj_player.y, sqn_level_end);
	
		instance_destroy(obj_player, false);
	}
	if(instance_exists(obj_index))
	{
		obj_index.level_end = true;
	}
}
function destroy_all()
{
	obj_polvo.vel_polvo = 0;
	instance_destroy(obj_polvo)
}

function texto (_text)
{
	draw_set_color(c_black);
	draw_set_font(fnt_space);
	draw_set_halign(1);
	draw_set_valign(1);
	draw_text(x, y, _text);
	draw_set_color(-1);
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);	
}

function transicao ()
{
	var _transicao = instance_create_layer(0, 0, "player", obj_transicao);
	transicao.destino = rm_index;
}