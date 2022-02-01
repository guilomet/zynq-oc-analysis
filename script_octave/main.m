pkg load io;
clear;
clc;

filename = 'out.json';
input_file = 'settings.json';
it = 1;

fin = fopen(input_file, 'w');

a.freq_min = 340;
a.freq_max = 380;
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
  for j = 1:it
    y(i,j) = result(i,j).output.error_rate;
  endfor
end

plot(x,y);