podatki = dlmread('kolokviji.csv', ';')

vsota = sum(podatki,2)
povprecje = mean(podatki,2)

ocene = izracunaj_oceno2(povprecje)

zaporedje = (1:length(ocene))'
rezultat = [zaporedje, podatki, vsota, povprecje, ocene]

dlmwrite('rezultati.csv',rezultat,';')

pkg install -forge statistics
pkg load statistics
%alternativa 1
frekvence = tabulate(ocene)

histogram = hist(ocene)
%alternativa 2
izracunaj = @(n)length(ocene(ocene==n))
arrayfun(izracuna, 6:10) %'map' za methlab

for n=6:10
  frekvence(n-5)=length(ocene(ocene==n))
end

%class(frekvence)

slika=figure()
bar(6:10,frekvence,'facecolor','r','edgecolor','b')
title('Porazdelitev ocen kolokvija')
xlabel
ylabel

% 3. naloga, matrika zeros n, for zanka 1-n, 1-l.
%4. naloga, minimum, maksimum. ali je sedlo funkcija. dvojna for zanka za preverjanje sedla.
%