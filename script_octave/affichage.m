pkg load io;
pkg load statistics;


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