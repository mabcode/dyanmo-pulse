randomize()

var wall_tile_id = layer_tilemap_get_id("Tile_Wall");

width = room_width / C_WIDTH;
height = room_height / C_HEIGHT;
grid = ds_grid_create(width, height);

// Fill grid with VOID cells
ds_grid_set_region(grid, 0, 0, width, height, VOID);

// setting up the controller
var controller_x = width / 2;
var controller_y = height / 2;
var controller_direction = irandom(4);

//control floor tile amount
var tile_amount = 1000;

// how often to change direction
var change_directions_odds = 1;

// set player location
var player_start_x = controller_x * C_WIDTH + C_WIDTH / 2;
var player_start_y = controller_y * C_HEIGHT + C_HEIGHT / 2;
instance_create_layer(player_start_x, player_start_y, "Instances", obj_player);

repeat(tile_amount) {
	grid[# controller_x, controller_y] = FLOOR;
	
	// Randomize the direction
	if(irandom(change_directions_odds) == change_directions_odds) {
		controller_direction = irandom(4);
	}
	
	// Move the controller
	var direction_x = lengthdir_x(1, controller_direction * 90);
	var direction_y = lengthdir_y(1, controller_direction * 90);
	controller_x += direction_x;
	controller_y += direction_y;
	
	// Make sure that the tiles don't exceed the grid
	if(controller_x <= 2 || controller_x >= height - 2) {
		controller_x += -direction_x * 2;
	}
	
	if(controller_y <= 2 || controller_y >= width - 2) {
		controller_y += -direction_y * 2;
	}
	
}

for(var _y = 1; _y < height-1; _y++) {
	for(var _x = 1; _x < width-1; _x++) {
		if(grid[# _x, _y] == FLOOR) {
			tilemap_set(wall_tile_id, 1, _x, _y);
		}
	}
}