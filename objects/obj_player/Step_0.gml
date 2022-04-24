/// @description Insert description here
// You can write your code in this editor


//Movement
if(keyboard_check(ord("w"))){
	y-= vmove
}
if(keyboard_check(ord("s"))){
	y+= vmove
}
if(keyboard_check(ord("a"))){
	x-= hmove
}
if(keyboard_check(ord("d"))){
	x+= hmove
}

//Shooting
if(mouse_check_button_pressed(mb_left) && canFire){
//create bullet

//Timing
canFire = false
alarm_set(0,shotTime)
}

//Interaction
