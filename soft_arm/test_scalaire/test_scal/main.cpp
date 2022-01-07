#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>

#include "clk_wizard.h"
#include  "gestion_json.h"

typedef long int u32;

int main()
{
    float m, d, o, freq, min_freq, max_freq;
    float predicted_result = 0, error_rate = 0;
    float out_freq[1000], out_error_rate[1000];

    unsigned int bram_size = 0x2000;
    unsigned int scal_size = 0x10000;
    unsigned int clkwiz_size = 0x10000;

    off_t scal_pbase = 0x40000000;
    off_t bram0_pbase = 0x40010000;
    off_t bram1_pbase = 0x40012000;
    off_t bram2_pbase = 0x40014000;
    off_t clkwiz_pbase = 0x44a00000;

    u32 mask, test;
    u32* scal_bptr, *clkwiz_bptr;
    float test_bram0, * bram0_vptr, * bram1_vptr, * bram2_vptr;

    int fd, fd_b0;
    u32 nb_traitement;

    int indic_traitement = 0;
    int buffer_size = 0;
    FILE* f_out_json;
    char buffer_out[100] = { '\0' };

    char json_string[1000] = "{min_freq:330, max_freq:350, pas:0.25, iterations:1000000}\n";

    if ((fd = open("/dev/mem", O_RDWR | O_SYNC)) != -1)
    {

        printf("acces memoire reussi !\n");
        printf(json_string);
        //créer un accès mémoire pour le test scalaire
        scal_bptr = (u32*)mmap(NULL, scal_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, scal_pbase);
        clkwiz_bptr = (u32*)mmap(NULL, clkwiz_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, clkwiz_pbase);

        //créer un accès mémoire pour chaque BRAM
        bram0_vptr = (float*)mmap(NULL, bram_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, bram0_pbase);
        bram1_vptr = (float*)mmap(NULL, bram_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, bram1_pbase);
        bram2_vptr = (float*)mmap(NULL, bram_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, bram2_pbase);

        //initialise les BRAM et le résultat attendu
        for (int i = 0; i < 256; i++)
        {
            bram0_vptr[i] = 1;
            bram1_vptr[i] = 2;
            if (i % 8 == 0)
                bram0_vptr[i] = 0 - bram0_vptr[i];
            predicted_result += bram0_vptr[i] * bram1_vptr[i];
        }

        printf("Resultat attendu : %f\n\n", predicted_result);

        get_freq(clkwiz_bptr);

        min_freq = 330;
        max_freq = 346;
        nb_traitement = 100000;

        for (freq = min_freq; freq <= max_freq; freq += 0.2)
        {

            set_freq(clkwiz_bptr, freq);

            //get_freq(clkwiz_bptr);

            //clkwiz_bptr[0x25C / 4] = 1;

            //lance le traintement
            for (int k = 0; k < nb_traitement; k++)
            {
                mask = 0x0001;
                scal_bptr[0] = scal_bptr[0] | mask;

                //printf("control_scal avant traitement : %04.4x\n", scal_bptr[0]);
                while (scal_bptr[0] == 1)
                {
                    ;
                }

                //printf("control_scal après traitement : %04.4x\n", scal_bptr[0]);

                if (bram2_vptr[0] != predicted_result)
                {
                    //printf("erreur du traitement no %d/%d, résultat obtenu : %f\n", k, nb_traitement , bram2_vptr[0]);
                    error_rate++;
                }
                else
                    ;

                bram2_vptr[0] = 0;
            }

            error_rate = error_rate / nb_traitement;
            error_rate *= 100;

            out_freq[indic_traitement] = freq;
            out_error_rate[indic_traitement] = error_rate;

            printf("Taux d'erreur pour %3.3fMHz : %3.3f %% \n\n", get_freq(clkwiz_bptr), error_rate);
            error_rate = 0;

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
        //buffer_size = sprintf(buffer_out, "  {\"freq\":%f, \"error_rate\":%f}\n", out_freq[i], out_error_rate[i]);
        //fwrite(buffer_out, sizeof(char), buffer_size, f_out_json);
        buffer_size = sprintf(buffer_out, " ]\n}");
        fwrite(buffer_out, sizeof(char), buffer_size, f_out_json);

        fclose(f_out_json);

        close(fd);
    }

    return 0;
}