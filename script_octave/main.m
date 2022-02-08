pkg load io;
pkg load statistics;
clear;
clc;

filename = 'out.json';
input_file = 'settings.json';
it = 50;

fin = fopen(input_file, 'w');

a.freq_min = 200;
a.freq_max = 368;
a.pas = 0.25;

sinput = toJSON(a);
fprintf(fin,sinput);

fclose(fin);

system("scp ./settings.json root@192.168.1.23:~/");
cmd_fpga = cstrcat("ssh root@192.168.1.23 /home/fpga/test_scal/test_scal/bin/ARM/Debug/test_scal.out -json ", input_file);

for i = 1:it
  system(cmd_fpga);
  system("scp root@192.168.1.23:~/out.json ./");

  json_str = fileread(filename);

  result(:,i) = fromJSON(json_str);
end

for i = 1:rows(result)
  
  x(i) = result(i,1).output.freq;
  xstr(i) = cellstr(sprintf("%f",x(i)));
  for j = 1:it
    y(i,j) = result(i,j).output.error_rate;
    mean(i,j) = result(i,j).output.mean;
    var(i,j) = result(i,j).output.var;
  endfor
end
figure(1)
plot(x,y);
title("Taux de calculs en faute (résultat différent de la prédiction)");

figure(2)
subplot(2,1,1);
plot(x,mean);
title("Moyenne des calculs en faute");

subplot(2,1,2);
plot(x,var);
title("Variance des calcul en faute");

figure(3)
boxplot(y');
title("Taux de calculs en faute (résultat différent de la prédiction");

figure(4)
subplot(2,1,1);
boxplot(mean');
title("Moyenne des calculs en faute");

subplot(2,1,2);
boxplot(var');
title("Variance des calcul en faute");