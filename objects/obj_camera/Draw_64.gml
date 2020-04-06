/// @desc Health bar 

draw_sprite_stretched(spr_health,0,healthBarX,healthBarY,(obj_player.playerHealth/obj_player.healthMax)*healthBarW,healthBarH );
draw_sprite(spr_healthBoarder,0,healthBarX,healthBarY);