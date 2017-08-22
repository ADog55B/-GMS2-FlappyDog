x = x - spd;

if (x < 60) && ifPass = false
{
	oScore.Score += 0.5;
	ifPass = true;
}

//物体出框后销毁

if (x < -50)
{
	instance_destroy();
}