//玩家死亡

if (hp <= 0)
{
	instance_destroy(self,true);
	instance_create_layer(x,y,"Player",oPlayerD);
	oObstacle.spd = 0;
}