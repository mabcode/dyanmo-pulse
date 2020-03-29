x_speed = 0;
y_speed = 0;
playerHealth = 100;
healthMax = playerHealth;
flash = 0;
createGun =1;

globalvar difficulty_mod;
globalvar gun_selected;
gun_selected = 1;

globalvar max_speed;
acceleration = 0.5;
globalvar current_room;
sprite_index=spr_player_d;
instance_create_layer(x, y, "Instances", obj_camera);