function narisi_sinus()
  mn = input('Vnesi minimum intervale za izris: ')
  mx = input('Vnesi maximum intervale za izris: ')
  if mx <= mn
    disp('Neveljaven interval.');
  else
    x = linspace(mn,mx,101);
    y = sin(x);
    plot(x,y)
  end
endfunction