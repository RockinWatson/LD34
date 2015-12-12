//unstick(dirs);
var _dir, _len, _x, _y;
_dir = 0;
_len = 1;
_x = x;
_y = y;

while(place_meeting(x,y,obj_ground)){
    x = _x;
    y = _y;
    
    x += lengthdir_x(_len,_dir);
    y += lengthdir_y(_len,_dir);
    
    _dir += 360/argument0;
    if (_dir >= 360){
        _dir -= 360;
        _len += 1;
    }
}
