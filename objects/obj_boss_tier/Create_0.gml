x_speed = 0;
y_speed = 0;
state = e_state.idle;
globalvar max_speed_e;
globalvar num_enemy;
globalvar range;
enemyHealth = 25;
acceleration = 0.6;
flash=0;
hitFrom = 0;

instance_create_layer(0, 0, "Instances", obj_gun_enemy);