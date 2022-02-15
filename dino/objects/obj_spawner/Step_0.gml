cd++;
rd = irandom_range(0,1);

if(cd > 50 && rd == 1)
{
	with (instance_create_layer(x, y+10, "Instances", obj_cactog))
	{
		speed = 10;
		direction =  180 * other.image_xscale;
		image_angle = 0;
	}
	cd=0;
}

if(cd > 50 && rd == 0)
{
	with (instance_create_layer(x, y+10, "Instances", obj_cactop))
	{
		speed = 10;
		direction =  180 * other.image_xscale;
		image_angle = 0;
	}
	cd=0;
}