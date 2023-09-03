/// @description Insert description here
// You can write your code in this editor


draw_set_font(fnt_space2);

draw_text(190, 300, "Maior pontuação: " + string(round(pontos)));


draw_text(190, 500, "Total de mortes: " + string(global.total_dies));


draw_text(190, 700, "Inimigos mortos: " + string(global.total_enemies));

draw_set_font(-1);


if(pontos < global.max_pontos)
{
	pontos += global.max_pontos / 120
}






































