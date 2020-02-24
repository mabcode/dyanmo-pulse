if(enemyHealth <= 0){
	instance_create_layer(x, y, "Instances", obj_bad_dead);
	instance_destroy();
}