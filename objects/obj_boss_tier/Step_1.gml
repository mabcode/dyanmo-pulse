if(enemyHealth <= 0){
	instance_deactivate_object(obj_gun_enemy);
	instance_create_layer(x, y, "Instances", obj_bad_dead);
	instance_destroy();
}