x_speed = 0;
y_speed = 0;
playerHealth = 100;
healthMax = playerHealth;
flash = 0;

globalvar difficulty_mod;
globalvar gun_selected;


globalvar max_speed;
acceleration = 0.5;
globalvar current_room;
sprite_index=spr_player_d;
instance_create_layer(x, y, "Instances", obj_camera);
instance_create_layer(-10, -10, "Instances", obj_gun);