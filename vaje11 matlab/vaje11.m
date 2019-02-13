% 1. naloga
podatki = dlmread('kolokviji.csv', ';')

vsota = sum(podatki,2)
povprecje = mean(podatki,2)

ocene = izracunaj_oceno2(povprecje)

zaporedje = (1:length(ocene))'
rezultat = [zaporedje, podatki, vsota, povprecje, ocene]

dlmwrite('rezultati.csv',rezultat,';')

%2. naloga
pkg install -forge io
pkg install -forge statistics
pkg load statistics

% alternativa 1
frekvence = tabulate(ocene)

% alternativa 2
izracunaj = @(n) length(ocene(ocene==n))
arrayfun(izracunaj, 6:10)  % 'map' za matlab

% alternativa 3
frekvence = zeros(1, 5)
for n = 6:10
  frekvence(n-5) = length(ocene(ocene==n))
end


class(frekvence)

bar(6:10, frekvence(6:10, 3))

slika = figure()
bar(6:10, frekvence(6:10, 3), 'facecolor', 'r', 'edgecolor', 'b')
title('Porazdelitev ocen kolokvija')
xlabel ("Ocene");
ylabel ("Stevilo studentov");
text (10, 10, "Bravo!");
print(slika, 'slika.pdf')

% 3. naloga
A=narascujoca(4)
ali_je_sedlo(A,1,1)
stevilo_sedel(A)
stevilo_sedel2(A)
cas1_zacetek = tic; stevilo_sedel(A); cas1_konec = toc;
cas2_zacetek = tic; stevilo_sedel2(A); cas2_konec = cas2 = toc;
razlika_casov = (cas1_konec - cas1_zacetek) - (cas2_konec - cas2_zacetek)
%4. naloga
rotacija(phi)
%5. naloga
a=[-3:3]
b=a.^3
T=[a;b]
