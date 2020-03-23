randomize()

audio_stop_all();

current_room = obj_hubroom;
var wall_tile_id = layer_tilemap_get_id("Tile_Wall");

width = room_width / C_WIDTH;
height = room_height / C_HEIGHT;
grid = ds_grid_create(width, height);

// Fill grid with VOID cells
ds_grid_set_region(grid, 0, 0, width, height, VOID);

// setting up the controller
var controller_x = 8;
var controller_y = 8;

var player_start_x = controller_x * C_WIDTH + C_WIDTH / 2;
var player_start_y = controller_y * C_HEIGHT + C_HEIGHT / 2;
instance_create_layer(player_start_x, player_start_y, "Instances", obj_player);

for (var _y = 2; _y < height-2; _y++) {
	for (var _x = 2; _x < width-2; _x++) {
		grid[# _x, _y] = FLOOR;
		
		//make the warp block to dungeonCyber
		if(_x == 10 && _y == 10){
			var bad_start_x = _x * C_WIDTH + C_WIDTH / 2;
			var bad_start_y = _y * C_HEIGHT + C_HEIGHT / 2;
			var rm = instance_create_layer(bad_start_x, bad_start_y, "Instances", obj_warp);
			rm.roomTo = dungeonCyber;
		}
		
		//make the warp block to dungeon
		if(_x == 10 && _y == 5){
			var bad_start_x = _x * C_WIDTH + C_WIDTH / 2;
			var bad_start_y = _y * C_HEIGHT + C_HEIGHT / 2;
			var rm = instance_create_layer(bad_start_x, bad_start_y, "Instances", obj_warp);
			rm.roomTo = dungeon;
		}
		
		//make the warp block to bossroom
		if(_x == 15 && _y == 8){
			var bad_start_x = _x * C_WIDTH + C_WIDTH / 2;
			var bad_start_y = _y * C_HEIGHT + C_HEIGHT / 2;
			var rm = instance_create_layer(bad_start_x, bad_start_y, "Instances", obj_warp);
			rm.roomTo = bossroom;
		}
		
		
	}
}


// Create the walls tiles
for (var _y = 1; _y < height-1; _y++) {
	for (var _x = 1; _x < width-1; _x++) {
		if (grid[# _x, _y] != FLOOR) {
			var _north_tile = grid[# _x, _y-1] == VOID;
			var _west_tile = grid[# _x-1, _y] == VOID;
			var _east_tile = grid[# _x+1, _y] == VOID;
			var _south_tile = grid[# _x, _y+1] == VOID;
		
			var _tile_index = NORTH*_north_tile + WEST*_west_tile + EAST*_east_tile + SOUTH*_south_tile + 1;
			tilemap_set(wall_tile_id, _tile_index, _x, _y);
		}
	}
}