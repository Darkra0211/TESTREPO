/// @description Worm Collison
// You can write your code in this editor

with(obj_worm2)
{
	health -= 1
	instance_destroy(other)
}