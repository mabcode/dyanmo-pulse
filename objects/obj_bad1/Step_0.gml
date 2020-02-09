
// Right and Left collision detection
x += x_speed;


if(x_speed > 0) {
	image_xscale = 1;
	if(grid_place_meeting(self, obj_dungeon.grid)) {
		x = bbox_right&~(C_WIDTH - 1);
		x -= bbox_right - x;
		x_speed = 0;
	}
} else if(x_speed < 0) {
	image_xscale = -1;
	if(grid_place_meeting(self, obj_dungeon.grid)) {
		x = bbox_left&~(C_WIDTH - 1);
		x += C_WIDTH + x - bbox_left;
		x_speed = 0;
	}
}

// Top and Bottom Collisions
y += y_speed;

if(y_speed > 0) {
	if(grid_place_meeting(self, obj_dungeon.grid)) {
		y = bbox_bottom&~(C_HEIGHT-1);
		y -= bbox_bottom - y;
		y_speed = 0;
	}
} else if(y_speed < 0) {
	if(grid_place_meeting(self, obj_dungeon.grid)) {
		y = bbox_top&~(C_HEIGHT-1);
		y += C_HEIGHT + y - bbox_top;
		y_speed = 0;
	}
}