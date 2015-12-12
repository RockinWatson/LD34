//////////////// PLATFORM SCRIPT ////////////////////

argument0 = 4 // is horizontal speed 4
argument1 = 10 //is jump speed 10
argument2 = 0.2 //is gravity 0.3
argument3 = 0 //speed on ladder 3
argument4 = obj_ground //is object ladder ?
//
// This script will if placed in the step event
// generate a correct movement in a platform game
// all solid objects are ground
// replace //sprite_index := ...; discription with:
// sprite_index := 'the sprite matching the discription';
//
/////////////////////////////////////////////////////
if keyboard_check(vk_left) = false and keyboard_check(vk_right) = false and keyboard_check(vk_up) = false and keyboard_check(vk_down) = false and vspeed = 0 then
{
    sprite_index := 0
}

gravity := argument2;
if (vspeed >= 0 && not place_free(x,y + vspeed + 1)) then
{
    move_contact_solid(270,vspeed + 1);
    vspeed = 0;
    gravity := 0;
}

if keyboard_check(vk_left) and (not keyboard_check(vk_up)) then
{
    for (i = 0; i<= 8; i += 1;)
    {
        if place_free(x-argument0,y-i) 
        {
            sprite_index := 1
            x-= argument0; y-= i; exit;
        } 
    }
} 
else
{
    if place_free(x-argument0,y + vspeed + argument2) and keyboard_check(vk_left) then
    {
        x := x-argument0;
        //sprite_index := ...; sprite flying/falling
    }
}

 
if keyboard_check(vk_right) and (not keyboard_check(vk_up)) then
{
    for (i = 0; i<= 8; i += 1;)
    {
        if place_free(x + argument0,y-i) 
        {
            sprite_index := 0
            x += argument0; y-= i; exit; 
        }
    }
}
else
{
    if place_free(x + argument0,y + vspeed + argument2) and keyboard_check(vk_right) then
    {
        x := x + argument0;
        //sprite_index := ...; sprite flying/falling
    }
}

/*
if place_meeting(x,y,argument4) then
{
    gravity = 0; vspeed = 0; 
    //sprite_index := ...; sprite climbing
}
*/
/*
if (keyboard_check(vk_up)) then
{
    if place_meeting(x,y,argument4) then
    {
        if place_free(x,y-argument3) y -= argument3;
        //sprite_index := ...; sprite climbing
    }
    else 
    if place_free(x,y + 1) = false then 
    {
        vspeed = -argument1;
    }
}

if (keyboard_check(vk_down)) then
{
if place_meeting(x,y + argument3 + sprite_height-sprite_yoffset,argument4) and place_free(x,y + argument3) then
{
y := y + argument3;
vspeed := 0;
//sprite_index := ...; sprite climbing
}
else
{
if place_meeting(x,y + sprite_height-sprite_yoffset,argument4) then
{
move_contact_solid(270,argument3);
vspeed := 0;
}
}
}

*/
if (not place_free(x,y-sprite_yoffset + vspeed)) then
{
    vspeed := argument2;
}
if (not place_free(x,y)) and place_free(x,y-1) then
{
    y := y-1;
    vspeed := 0;
}

if vspeed!= 0 then
{
//sprite_index := ...; sprite flying/falling
}

