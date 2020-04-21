/// @description Insert description here
// You can write your code in this editor

if(update){
	if(deadEnemies > 3){
		var bad_start_x = 10 * C_WIDTH + C_WIDTH / 2;
		var bad_start_y = 10 * C_HEIGHT + C_HEIGHT / 2;
		var rm = instance_create_layer(bad_start_x, bad_start_y, "Instances", obj_warp);
		rm.roomTo = dungeonCyber;	
	}
	
	
	if(deadEnemies > 6){
		var bad_start_x = 5 * C_WIDTH + C_WIDTH / 2;
		var bad_start_y = 7 * C_HEIGHT + C_HEIGHT / 2;
		var rm = instance_create_layer(bad_start_x, bad_start_y, "Instances", obj_warp);
		rm.roomTo = dungeonOverrun;
		
		//make the multishot sprite
		var bad_start_x = 14 * C_WIDTH + C_WIDTH / 2;
		var bad_start_y = 7 * C_HEIGHT + C_HEIGHT / 2;
		instance_create_layer(bad_start_x, bad_start_y, "Instances", obj_multiShot);
	}
	
		
	if(deadEnemies > 9){
		var bad_start_x = 15 * C_WIDTH + C_WIDTH / 2;
		var bad_start_y = 7 * C_HEIGHT + C_HEIGHT / 2;
		var rm = instance_create_layer(bad_start_x, bad_start_y, "Instances", obj_warp);
		rm.roomTo = bossroom;
	}
	update=false;
}