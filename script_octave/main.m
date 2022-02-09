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
  disp("Traitement numéro : ");
  disp(i);
  system(cmd_fpga);
  system("scp root@192.168.1.23:~/out.json ./");

  json_str = fileread(filename);

  result(:,i) = fromJSON(json_str);
  
end

for i = 1:rows(result)
  
  x(i) = result(i,1).output.freq;
  for j = 1:it
    y(i,j) = result(i,j).output.error_rate;
    mean(i,j) = result(i,j).output.mean;
    mean(i,j) = abs(mean(i,j));
    var(i,j) = result(i,j).output.var;
    var(i,j) = abs(var(i,j));
  endfor
end

xstr = num2str(x);
xstr2 = strsplit(xstr);

lmean = log10(mean);
lvar = log10(var);

figure(1)
plot(x,y);
title("Taux de calculs en faute (résultat différent de la prédiction)");
xlabel("Fréquence en MHz");
ylabel("Taux de calculs en faute en %");

figure(2)
subplot(2,1,1);
semilogy(x,mean);
title("Moyenne de l'erreur relative");
xlabel("Fréquence en MHz");
ylabel("Moyenne de l'erreur relative, échelle log10");

subplot(2,1,2);
semilogy(x,var);
title("Variance de l'erreur relative");
xlabel("Fréquence en MHz");
ylabel("Variance de l'erreur relative, échelle log10");

figure(3)
boxplot(y',"Labels",xstr2);
title("Taux de calculs en faute (résultat différent de la prédiction");
xlabel("Fréquence en MHz");
ylabel("Taux de calculs en faute en %");

figure(4)
subplot(2,1,1);
boxplot(10*lmean',"Labels",xstr2);
title("Moyenne de l'erreur relative");
xlabel("Fréquence en MHz");
ylabel("Moyenne de l'erreur relative en DB (y = 10*log10(mean))");

subplot(2,1,2);
boxplot(10*lvar',"Labels",xstr2);
title("Variance de l'erreur relative");
xlabel("Fréquence en MHz");
ylabel("Variance de l'erreur relative en DB (y = 10*log10(var))");