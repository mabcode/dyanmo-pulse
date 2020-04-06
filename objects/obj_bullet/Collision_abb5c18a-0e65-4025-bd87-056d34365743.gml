with (other){
	enemyHealth--;
	flash =3;
	hitFrom = other.direction;
	instance_create_layer(x,y,"Instances", obj_blood);
}

instance_destroy();