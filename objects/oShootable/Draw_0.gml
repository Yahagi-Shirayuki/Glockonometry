draw_self()
if (hit_flash > 0)
{
	hit_flash--;
	shader_set(Shader1);
	draw_self();
	shader_reset();
}