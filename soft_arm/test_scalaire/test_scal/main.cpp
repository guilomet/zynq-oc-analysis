#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include<random>
#include<functional>

#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>

#include "clk_wizard.h"
#include  "gestion_json.h"

typedef long int u32;

std::mt19937 engine;


int main(int argc, char* argv[])
{
    float freq, min_freq, max_freq;
    float predicted_result = 0;
    float out_freq[500], out_error_rate[500], variance[500];
    float mean[10000];
    float result;
    float error[10000];
    float temperature;
    int count_iteration[256] = {0};
    long int test_iteration;
    int indic_iteration;
    float moy_A = 0;
    float moy_B = 0;
    float var_A = 10;
    float var_B = 2;

    unsigned int bram_size = 0x2000;
    unsigned int scal_size = 0x10000;
    unsigned int clkwiz_size = 0x10000;
    unsigned int xadc_size = 0x10000;

    off_t scal_pbase = 0x40000000;
    off_t bram0_pbase = 0x40010000;
    off_t bram1_pbase = 0x40012000;
    off_t bram2_pbase = 0x40014000;
    off_t clkwiz_pbase = 0x44a00000;
    off_t xadc_pbase = 0x44a10000;

    u32 mask, temp_reg, xadc_conf_0, xadc_conf_1, xadc_conf_2;
    u32* scal_bptr, *clkwiz_bptr, *xadc_bptr;
    float * bram0_vptr, * bram1_vptr;
    float A[256], B[256];
    float* bram2_vptr;
    int fd;
    u32 nb_traitement;

    int indic_traitement = 0;
    long int indic_err = 0;
    int buffer_size = 0;
    FILE* f_out_json;
    FILE* f_in_json;
    char buffer_out[100] = { '\0' };

    char json_string[1000] = { "\0" };

    if ((fd = open("/dev/mem", O_RDWR | O_SYNC)) != -1)
    {

        printf("acces memoire reussi !\n");

        //créer un accès mémoire pour les différentes IP fonctionnelles
        scal_bptr = (u32*)mmap(NULL, scal_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, scal_pbase);
        clkwiz_bptr = (u32*)mmap(NULL, clkwiz_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, clkwiz_pbase);
        xadc_bptr = (u32*)mmap(NULL, xadc_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, xadc_pbase);

        //créer un accès mémoire pour chaque BRAM
        bram0_vptr = (float*)mmap(NULL, bram_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, bram0_pbase);
        bram1_vptr = (float*)mmap(NULL, bram_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, bram1_pbase);
        bram2_vptr = (float*)mmap(NULL, bram_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, bram2_pbase);

        //mesure initiale de la température
        *(xadc_bptr) = 0xA;

        //gestion des paramètres d'entrée

        min_freq = 360;
        max_freq = 380;
        nb_traitement = 10000;

        if (argv[1] = "-json")
        {
            f_in_json = fopen(argv[2], "r");
            fread(json_string, sizeof(char), 1000, f_in_json);
            printf("Parametre JSON en entrée : %s \n", json_string);
        }

        //gestion température
        
        printf("Intialisattion temperature");

        for (int i = 0; i < 16; i++)
            printf(".");
        printf("\n");
        xadc_conf_0 = *(xadc_bptr + 0x300);
        xadc_conf_1 = *(xadc_bptr + 0x304);
        xadc_conf_2 = *(xadc_bptr + 0x308);

        temp_reg = *(xadc_bptr + 0x200);
        temperature = (((float)(temp_reg)) * 503.975) / 4096;
        temperature -= 273.15;

        std::normal_distribution<float> distributionA(moy_A, var_A);
        std::normal_distribution<float> distributionB(moy_B, var_B);

        //initialise les BRAM et le résultat attendu
        for (int i = 0; i < 256; i++)
        {
            //bram0_vptr[i] = ((float)(i)+1)/2;
            bram0_vptr[i] = distributionA(engine);
            A[i] = bram0_vptr[i];
            //bram1_vptr[i] = 1;
            bram1_vptr[i] = distributionB(engine);
            B[i] = bram1_vptr[i];
            predicted_result += bram0_vptr[i] * bram1_vptr[i];
        }

        printf("Resultat attendu : %f\n\n", predicted_result);

        get_freq(clkwiz_bptr);

        

        for (freq = min_freq; freq <= max_freq; freq += 0.25)
        {

            set_freq(clkwiz_bptr, freq);

            //lance le traitement
            for (int k = 0; k < nb_traitement; k++)
            {
                mask = 0x0001;
                scal_bptr[0] = scal_bptr[0] | mask;

                while (scal_bptr[0] & 1 == 1)
                {
                    ;
                }
                result = bram2_vptr[7];
                test_iteration = bram2_vptr[8];

                if (result != predicted_result)
                {
                    error[indic_err] = result;
                    indic_err++;
                    if (test_iteration != 32896)
                    {
                        indic_iteration = 32896 - test_iteration;
                        count_iteration[indic_iteration]++;
                    }
                }

                bram2_vptr[7] = 0;
            }
            variance[indic_traitement] = 0;
            mean[indic_traitement] = 0;
            if (indic_err != 0)
            {
                for (int j = 0; j < indic_err; j++)
                {
                    mean[indic_traitement] += error[j];
                }
                mean[indic_traitement] /= indic_err;

                for (int j = 0; j < indic_err; j++)
                {
                    variance[indic_traitement] += (error[j] - mean[indic_traitement]) * (error[j] - mean[indic_traitement]);
                    error[j] = 0;
                }

                for (int j = 0; j < 256; j++)
                {
                    count_iteration[j] = 0;
                }

                variance[indic_traitement] = sqrtf(variance[indic_traitement]);

                variance[indic_traitement] /= indic_err;
            }

            out_error_rate[indic_traitement] = indic_err;

            out_error_rate[indic_traitement] = out_error_rate[indic_traitement] / nb_traitement;
            out_error_rate[indic_traitement] *= 100;

            out_freq[indic_traitement] = get_freq(clkwiz_bptr);

            printf("Taux d'erreur pour %3.3fMHz : %3.3f %% | Moyenne : %3.3f | Variance : %3.3f\n\n", out_freq[indic_traitement], out_error_rate[indic_traitement], mean[indic_traitement], variance[indic_traitement]);
            indic_err = 0;

            indic_traitement++;
        }

        f_out_json = fopen("out.json", "w");

        buffer_size = sprintf(buffer_out, "{\n \"output\":\n [\n");
        fwrite(buffer_out, sizeof(char), buffer_size, f_out_json);

        for (int j = 0; j < indic_traitement; j++)
        {
            buffer_size = sprintf(buffer_out, "  {\"freq\":%f, \"error_rate\":%f},\n", out_freq[j], out_error_rate[j]);
            fwrite(buffer_out, sizeof(char), buffer_size, f_out_json);
        }

        buffer_size = sprintf(buffer_out, " ]\n}");
        fwrite(buffer_out, sizeof(char), buffer_size, f_out_json);

        fclose(f_out_json);

        close(fd);
    }
    else
    printf("echec ouverture memoire\n");

    return 0;
}