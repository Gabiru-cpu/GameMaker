var mov_x = sign(velh);
var mov_y = sign(velv);

//colissao horizontal
if(place_meeting(x + velh, y, objChao))
{
	while(!place_meeting(x + mov_x, y, objChao))
	{
		x += mov_x;
	}
	velh = 0;
}
x+=velh;

//colissao vertical
if(place_meeting(x,y + velv, objChao))
{
	while(!place_meeting(x,y+mov_y,objChao))
	{
		y+=mov_y;
	}
	velv = 0;
}
y += velv;