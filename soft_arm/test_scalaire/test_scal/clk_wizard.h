#pragma once

typedef long int u32;

#define VCO_MAX 1200
#define VCO_MIN 800
#define M_MIN 2
#define M_MAX 64
#define D_MAX 106
#define D_MIN 1
#define O_MAX 128
#define O_MIN 1
#define CLK_IN 125

int calcul_diviseur(float setRate, float& m, float& d, float& o);

int set_freq(u32* clk_wizard, float freq);

float get_freq(u32* clock_wizard);