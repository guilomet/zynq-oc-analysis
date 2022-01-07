#include <stdio.h>

#include "clk_wizard.h"

int calcul_diviseur(float setRate, float& m, float& d, float& o)
{
	float fvco;
	float diff;
	float freq;
	float minerr = 0.1;

	for (m = M_MIN; m <= M_MAX; m += 0.125)
	{
		for (d = D_MIN; d <= D_MAX; d++)
		{
			fvco = CLK_IN * m / d;
			if (fvco >= VCO_MIN && fvco <= VCO_MAX)
			{

				for (o = O_MIN; o <= O_MAX; o += 0.125)
				{
					freq = fvco / o;

					if (freq > setRate)
					{
						diff = freq - setRate;
					}
					else {
						diff = setRate - freq;
					}
					if (diff == 0)
					{
						//printf("Freq : %3.3f MHz, M = %3.3f, D = %3.3f, O = %3.3f\n", setRate, m, d, o);
						return 0;
					}
					else if (diff < minerr)
					{
						minerr = diff;
						//printf("Freq : %3.3f MHz, M = %3.3f, D = %3.3f, O = %3.3f, Diff = %f\n", setRate, m, d, o, diff);
						return 0;
					}

				}
			}
		}
	}
	return -1;
}

int set_freq(u32* clk_wizard, float freq)
{
	float m, d, o;
	float div_m, div_o;
	u32 clk_config_reg_0, clk_config_reg_2;

	if (calcul_diviseur(freq, m, d, o) != 0)
	{
		printf("erreur : frequence impossible\n");
		return -1;
	}

	clk_config_reg_0 = clk_wizard[128];
	clk_config_reg_2 = clk_wizard[130];

	clk_config_reg_0 &= 0xFC000000;
	clk_config_reg_2 &= 0xFFC00000;

	clk_config_reg_0 |= (int)d;
	clk_config_reg_0 |= ((int)m) << 8;

	clk_config_reg_2 |= (int)o;

	if ((m - (int)m) != 0)
	{
		div_m = (m - (int)m);
		div_m *= 1000;
		clk_config_reg_0 |= (int)div_m << 16;
	}

	if ((o - (int)o) != 0)
	{
		div_o = (o - (int)o);
		div_o *= 1000;
		clk_config_reg_2 |= (int)div_o << 8;
	}

	clk_wizard[128] = clk_config_reg_0;
	clk_wizard[130] = clk_config_reg_2;

	//printf("registre 0 : %08x | registre 2 : %08x\n", clk_wizard[128], clk_wizard[130]);

	while (clk_wizard[1] != 1)
	{
		printf(".");
	}

	clk_wizard[0x25C / 4] = 3;

	while ((clk_wizard[0x25C / 4] & 3) == 3)
	{
		//printf(".");
	}
	//printf("\n");

	//printf("\nregistre 23 : %08x\n", clk_wizard[0x25C / 4]);

	//printf("registre 0 : %08x | registre 2 : %08x\n", clk_wizard[128], clk_wizard[130]);

	return 0;
}

float get_freq(u32* clock_wizard)
{
	u32 clk_config_reg_0, clk_config_reg_2;
	float m, d, o;
	float freq;

	clk_config_reg_0 = clock_wizard[128];
	clk_config_reg_2 = clock_wizard[130];

	d = clk_config_reg_0 & 0x000000FF;
	m = (clk_config_reg_0 & 0x0000FF00) >> 2*4;
	m += ((float)((clk_config_reg_0 & 0x03FF0000) >> 16))/1000;
	o = clk_config_reg_2 & 0x000000FF;
	o += ((float)((clk_config_reg_2 & 0x0003FF00) >> 8))/1000;

	freq = CLK_IN * m;
	freq /= d;
	freq /= o;

	//printf("frequence : %3.3f MHz | M = %3.3f | D = %3.3f | O = %3.3f\n",freq, m, d, o);

	return freq;
}