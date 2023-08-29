/// @description Insert description here
// You can write your code in this editor

var _xx = irandom_range(64, 1856);
var _yy = irandom_range(-96, -156);
//Criando os polvos de tempo em tempo
instance_create_layer(_xx, _yy, "inimigos", obj_polvo);
if(global.pontos > 15){
instance_create_layer(_xx, _yy, "inimigos", obj_cyclops);
}
alarm[0] = room_speed*random_range(1, 3);
































