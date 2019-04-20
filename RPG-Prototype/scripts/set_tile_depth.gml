///set_tile_depth(tile_layer, yOffset);
//to use this script pass in the ID of tile layer and how much will offset

var tile_layer = argument0;
var yOffset = argument1;

//Get array of tiles
var tiles = tile_get_ids_at_depth(tile_layer);

//Iterate through array of tiles
array_size = array_length_1d(tiles);
for(var i = 0; i < array_size; i++) {
    var tile = tiles[i];
    
    //Determine if tile exists
    if(tile_exists(tile)) {
        tile_set_depth(tile, -tile_get_y(tile)+yOffset);
    }
}

