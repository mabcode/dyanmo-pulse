x = obj_player.x;
y = obj_player.y+5;

//change the angle of the gun
image_angle = point_direction(x,y,mouse_x,mouse_y);

fireDelay--;

if(mouse_check_button(mb_left)) && (fireDelay < 0){
	recoil=4;
	fireDelay = 8;
	if(gun_selected == 1) {
		with( instance_create_layer(x,y,"Instances", obj_bullet)){
			speed = 5;
			direction = other.image_angle + random_range(-3,3);
			image_angle	 = direction;
		}
	} if(gun_selected == 2) {
		with( instance_create_layer(x,y,"Instances", obj_bullet_shot)){
			speed = 5;
			direction = other.image_angle + 5;
			image_angle	 = direction;
		}
		with( instance_create_layer(x,y,"Instances", obj_bullet_shot)){
			speed = 5;
			direction = other.image_angle - 5;
			image_angle	 = direction;
		}
		with( instance_create_layer(x,y,"Instances", obj_bullet_shot)){
			speed = 5;
			direction = other.image_angle + 9;
			image_angle	 = direction;
		}
		with( instance_create_layer(x,y,"Instances", obj_bullet_shot)){
			speed = 5;
			direction = other.image_angle - 9;
			image_angle	 = direction;
		}
		with( instance_create_layer(x,y,"Instances", obj_bullet_shot)){
			speed = 5;
			direction = other.image_angle;
			image_angle	 = direction;
		}
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270){
	image_yscale = -1;
}
else{
	image_yscale = 1;
}