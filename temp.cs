static int[] make2(int[] xs, int[] ys)
{
	var c = 0;
	var res = new int[2];

	for (var i = 0; i < xs.Length && c < 2; i++)
	{
		res[c++] = xs[i];
	}

	for (var i = 0; i < ys.Length && c < 2; i++)
	{
		res[c++] = ys[i];
	}

	return res;
}
