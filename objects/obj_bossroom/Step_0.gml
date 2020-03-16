/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_gun_enemy)){
	var bad_start_x = 12 * C_WIDTH + C_WIDTH / 2;
	var bad_start_y = 12 * C_HEIGHT + C_HEIGHT / 2;
	var rm = instance_create_layer(bad_start_x, bad_start_y, "Instances", obj_warp);
			rm.roomTo = hubroom;
			
			
}