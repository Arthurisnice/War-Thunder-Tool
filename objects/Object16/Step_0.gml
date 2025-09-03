if do_==true
{
	image_alpha-=0.01
if image_alpha<=0 {instance_destroy()}
}
if do_==false
{
	for (var i=0; i<array_length(alphabet_array);i++)
	{
		image_loader.text_txt=alphabet_array[i]
	}
}
