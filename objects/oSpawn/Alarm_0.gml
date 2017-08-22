//随机出现障碍

place = random(150);

instance_create_layer(550,place,"Obstacle",oObstacle);
instance_create_layer(550,place + blank,"Obstacle",oObstacle);


if ifStart = false
{
	alarm[0] = spawn;
	ifStart = true;
}

alarm[0] = spawn;