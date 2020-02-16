// player step events

var x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var y_input = keyboard_check(vk_down) - keyboard_check(vk_up);

//change character image set;

if(x_input>0 || x_input<0){
	sprite_index=spr_player_r;
}
else if(y_input < 0){
	sprite_index=spr_player_u;
}
else if(y_input > 0){
	sprite_index=spr_player_d;
}


x_speed += x_input * acceleration;
y_speed += y_input * acceleration;


var total_speed = point_distance(0, 0, x_speed, y_speed);
var total_direction = point_direction(0, 0, x_speed ,y_speed);

if (total_speed > max_speed) {
	x_speed = lengthdir_x(max_speed, total_direction);
	y_speed = lengthdir_y(max_speed, total_direction);
}

if(x_input == 0) {
	x_speed = lerp(x_speed, 0, 0.3);
}

if(y_input == 0) {
	y_speed = lerp(y_speed, 0, 0.3);
}

if(x_input == 0 && y_input == 0) {
	image_speed = 0;
	image_index = 0;
} else {
	image_speed = 0.7;
}

// Right and Left collision detection
x += x_speed;


if(x_speed > 0) {
	image_xscale = 1;
	if(grid_place_meeting(self, current_room.grid)) {
		x = bbox_right&~(C_WIDTH - 1);
		x -= bbox_right - x;
		x_speed = 0;
	}
} else if(x_speed < 0) {
	image_xscale = -1;
	if(grid_place_meeting(self, current_room.grid)) {
		x = bbox_left&~(C_WIDTH - 1);
		x += C_WIDTH + x - bbox_left;
		x_speed = 0;
	}
}

// Top and Bottom Collisions
y += y_speed;

if(y_speed > 0) {
	if(grid_place_meeting(self, current_room.grid)) {
		y = bbox_bottom&~(C_HEIGHT-1);
		y -= bbox_bottom - y;
		y_speed = 0;
	}
} else if(y_speed < 0) {
	if(grid_place_meeting(self, current_room.grid)) {
		y = bbox_top&~(C_HEIGHT-1);
		y += C_HEIGHT + y - bbox_top;
		y_speed = 0;
	}
}