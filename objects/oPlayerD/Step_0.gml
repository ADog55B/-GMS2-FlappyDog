vsp = vsp + grd;

if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

//重启游戏

if (keyboard_check(ord("R")))
{
	game_restart();
}