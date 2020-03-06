x = obj_bad_boss.x;
y = obj_bad_boss.y+5;

//change the angle of the gun
image_angle = point_direction(x,y,obj_player.x,obj_player.y);

fireDelay--;

if(fireDelay < 0 && obj_bad_boss.state == e_state.attack){
	recoil=4;
	fireDelay = 28;
	with( instance_create_layer(x,y,"Instances", obj_bullet_enemy)){
		speed = 5;
		direction = other.image_angle + random_range(-6,6);
		image_angle	 = direction;
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