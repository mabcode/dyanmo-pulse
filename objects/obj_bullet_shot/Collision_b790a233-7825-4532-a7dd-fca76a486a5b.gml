with (other){
	enemyHealth = enemyHealth - 0.3;
	flash =3;
	hitFrom = other.direction;
	instance_create_layer(x,y,"Instances", obj_blood);
}

instance_destroy();