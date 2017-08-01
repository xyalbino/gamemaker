enum PlayerDirection{
    UP,
    DOWN,
    LEFT,
    RIGHT
}
m_playerDirection = PlayerDirection.DOWN;
image_speed=1.25;//动画播放速度
depth=-y;//即深度值越小，离相机的距离越近
if(m_isAttacking == false)
{
if keyboard_check(ord("A"))
{
	phy_position_x += -8;//phy_position_x在打开room physics时使用
	sprite_index=spr_hero_mov_side;//sprite
	image_xscale=1;//sprite方向
	 m_playerDirection = PlayerDirection.LEFT;
	if keyboard_check(ord("W")) 
	{
	
	phy_position_y += -8;
	sprite_index=spr_hero_mov_back;

	}
	if keyboard_check(ord("S")) 
	{

	phy_position_y += 8;

	}
}
 
else if keyboard_check(ord("D"))
{
	phy_position_x += 8;
	sprite_index=spr_hero_mov_side;
	image_xscale=-1;
	 m_playerDirection = PlayerDirection.RIGHT;
	if keyboard_check(ord("W")) 
	{

	phy_position_y += -8;
	sprite_index=spr_hero_mov_back;
	
	}
	if keyboard_check(ord("S")) 
	{
	
	phy_position_y += 8;
	sprite_index=spr_hero_mov_side;

	}
}
else if keyboard_check(ord("W"))
{
	//sprite_index=;
	phy_position_y += -8;
	sprite_index=spr_hero_mov_back;
	 m_playerDirection = PlayerDirection.UP;
}
else if keyboard_check(ord("S"))
{
    //sprite_index=;
	phy_position_y += 8;
	sprite_index=spr_hero_std;
	 m_playerDirection = PlayerDirection.DOWN;
}

else if keyboard_check(ord("J"))
{
	//sprite_index=;
m_isAttacking = true;
  switch(m_playerDirection)
  {
  case PlayerDirection.UP:
    sprite_index = spr_hero_attack;;
    break;
  case PlayerDirection.DOWN:
    sprite_index = spr_hero_attack;;
    break;
  case PlayerDirection.LEFT:
    sprite_index = spr_hero_attack;;
    break;
  case PlayerDirection.RIGHT:
    sprite_index = spr_hero_attack;;
    break;
  }
  image_index = 0;
	}
else 
{
sprite_index=spr_hero_std;
}
}