
image_speed=1.25;//动画播放速度
depth=-y;//即深度值越小，离相机的距离越近

 var player = instance_find(obj_hero, 0);

 var deltaX = player.x - x;
    var deltaY = player.y - y;

  var mySpeed = 2;
    if(deltaX > mySpeed){
        phy_position_x += mySpeed;
    }
    else if(deltaX < -mySpeed){
        phy_position_x -= mySpeed;
    }
    else{
        phy_position_x += deltaX;
    }
    
    if(deltaY > mySpeed){
        phy_position_y += mySpeed;
    }
    else if(deltaY < -mySpeed){
        phy_position_y -= mySpeed;
    }
    else{
        phy_position_y += deltaY;
    }
	
	if(deltaX > 0){
        image_xscale = -1;
    }
    else if(deltaX < 0){
        image_xscale = 1;
    }
    sprite_index = spr_enemy2_std;