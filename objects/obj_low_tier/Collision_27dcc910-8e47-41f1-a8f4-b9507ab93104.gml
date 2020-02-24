/// @description Collision with player

obj_player.playerHealth -= (1 * difficulty_mod);
obj_player.flash = 3;

if(obj_player.playerHealth <= 0) {
	room_goto(gameOver);
}