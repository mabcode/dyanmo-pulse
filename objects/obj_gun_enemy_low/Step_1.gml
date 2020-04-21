
//change the angle of the gun
image_angle = point_direction(x,y,obj_player.x,obj_player.y);

fireDelay--;
trishotDelay--;

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270){
	image_yscale = -1;
}
else{
	image_yscale = 1;
}