x = x + hsp;
y = y + vsp;


//布尔变量判断玩家是否自动移动

if(x >= 100)
{
	auto = false;
	hsp = 0;
}


if (auto = false)
{
	vsp = vsp + grd;
	
	if (keyboard_check(vk_space))
	{
		vsp = -5;
	}

	//按下空格生成屁，并播放跳跃音效
	if (keyboard_check_pressed(vk_space))
	{
		instance_create_layer(x - 40,y + 8,"Player",oFart);
		audio_play_sound(sJump,1,0)
	}
	
	//碰撞检测
	if (place_meeting(x,y+vsp,oWall))
	{
		hp--;
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}

	if (place_meeting(x,y+vsp,oWallT))
	{
		hp--;
		while (!place_meeting(x,y+sign(vsp),oWallT))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}



	//玩家下坠时改变角度
	if (vsp <= 0)
	{
		image_angle = 0;
		angle = 0;
	}
	else
	{
		angle = angle - 1;
		image_angle = angle;
	}
}