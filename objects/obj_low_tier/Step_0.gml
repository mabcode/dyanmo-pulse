switch(state){
	case e_state.idle:{
		x_speed =0;
		y_speed =0;
		if(distance_to_object(obj_player)< range+20){
			state = e_state.chase;
		}
	}
	break;
	
	case e_state.chase:{
		//right= pos , left = neg
		dir_x = sign(obj_player.x - x);
		dir_y = sign(obj_player.y - y);	
		x_speed = dir_x * acceleration;
		y_speed = dir_y * acceleration;

		if(distance_to_object(obj_player) < 60){
			state = e_state.attack;
		}
	}
	break;
	
	case e_state.attack:{
		x_speed =0;
		y_speed =0;
		if(distance_to_object(obj_player) > range+15){
			state = e_state.chase;
		}
	}
	break;
}
fireDelay--;
trishotDelay--;

//logic to connect each gun to enemy
with(mygun){
x = other.x;
y = other.y;

if(fireDelay < 0 && other.state == e_state.attack){
	audio_play_sound(m_enemy_shoot,1,false);
	recoil=4;
	fireDelay = 36;
	with( instance_create_layer(x,y,"Instances", obj_bullet_enemy_low)){
		speed = 3;
		direction = other.image_angle + random_range(-6,6);
		image_angle	 = direction;
	}
}

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