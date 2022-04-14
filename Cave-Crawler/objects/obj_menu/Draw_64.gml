/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player2)){
draw_text(50, 75, "Points: " + string(obj_player2.points))
draw_healthbar(8,8,256,32,obj_player2.pHealth,c_black,c_red,c_lime,0,true,true)
}
