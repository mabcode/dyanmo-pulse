/// @arg object
/// @arg grid
var object = argument0;
var grid = argument1;

var top_right = grid[# (object.bbox_right - 1) div C_WIDTH,  object.bbox_top div C_HEIGHT] == VOID;
var top_left = grid[# object.bbox_left div C_WIDTH,  object.bbox_top div C_HEIGHT] == VOID;
var bottom_right = grid[# (object.bbox_right - 1) div C_WIDTH,  (object.bbox_bottom - 1) div C_HEIGHT] == VOID;
var bottom_left = grid[# object.bbox_left div C_WIDTH,  (object.bbox_bottom - 1) div C_HEIGHT] == VOID;

return top_right || top_left || bottom_right || bottom_left;