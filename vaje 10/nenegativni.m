function [u] = nenegativni(v)
  v(v < 0) = 0;
  u = v;
endfunction