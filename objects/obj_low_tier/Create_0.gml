x_speed = 0;
y_speed = 0;
state = e_state.idle;
globalvar max_speed_e;
globalvar num_enemy;
globalvar range;
enemyHealth = 5;
acceleration = 0.5;
flash=0;
hitFrom = 0;

fireDelay = 0;
trishotDelay=0;


mygun = instance_create_layer(0, 0, "Instances", obj_gun_enemy_low);