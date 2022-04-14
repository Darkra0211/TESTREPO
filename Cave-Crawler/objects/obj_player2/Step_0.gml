/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x,y,mouse_x, mouse_y);
if (keyboard_check(ord("A")))
{
	x -= 5 + boost
}
if (keyboard_check(ord("D")))
{
	x += 5 + boost
}
if (keyboard_check(ord("W")))
{
	y -= 5 + boost
}
if (keyboard_check(ord("S")))
{
	y += 5 + boost
}
if (mouse_check_button_pressed(mb_left) && canFire)
{
	//Bullet creation
	instance_create_layer(x,y,"Instances", obj_bullet)
	//Timing
	canFire = false
	alarm_set(0,shotTime)
}

//Coffee interaction
with(obj_CoffeeMachine)
{
	var coffeeDist = point_distance(x,y,other.x,other.y)
	if(coffeeDist <= other.interactDistance)
	{
		other.cIntr = true
	}
}

if(keyboard_check(ord("E")) && cIntr && points >= obj_CoffeeMachine.cost && canBoost)
{
	boost = 30
	alarm_set(1,900)
	canBoost = false
	obj_CoffeeMachine.cost += 250
}

//Upgrade interaction
with(obj_upgrade)
{
	var upgDist = point_distance(x,y,other.x,other.y)
	if(upgDist <= other.interactDistance)
	other.uIntr = true
}

if(keyboard_check(ord("E")) && uIntr && points >= obj_upgrade.cost)
{
	upgradeLevel += 1
	shotTime  = 30/(2+upgradeLevel)
	obj_upgrade.cost += 1000
}



