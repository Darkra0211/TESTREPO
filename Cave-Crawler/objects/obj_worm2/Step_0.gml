/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player2))
{
	var ex,ey;
	ex = instance_nearest(x,y,obj_player2).x
	ey = instance_nearest(x,y,obj_player2).y
	direction = point_direction(x,y,ex,ey)
	speed = 3
}

if(health == 0)
{
	obj_player2.points += 100*obj_player2.pMult
	instance_destroy()
}