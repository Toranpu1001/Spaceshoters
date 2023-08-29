/// @description Insert description here
// You can write your code in this editor


//Criando o impacto ao morrer


instance_create_layer(x, y, "inimigos", explosion);

//Apenas se o index existir
if(instance_exists(obj_index))
{
	obj_index.ganhando_pontos(pontos);
}
chance_drop(chance);
























