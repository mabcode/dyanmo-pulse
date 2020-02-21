/// @description Collision with player

obj_player.playerHealth -= (1 * difficulty_mod);

if(obj_player.playerHealth <= 0) {
	room_goto(gameOver);
}