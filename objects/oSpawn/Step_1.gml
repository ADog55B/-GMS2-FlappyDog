//死亡主角出现时销毁防止产生新的障碍物

if (!instance_exists(oPlayer)) 
{
instance_destroy();
}