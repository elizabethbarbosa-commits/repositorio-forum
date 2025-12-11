Program Pzim ;
var
  n: Integer;
  matriz: array[1..9, 1..9] of Integer;
  linhaInicio, linhaFim, colunaInicio, colunaFim, valorAtual, i, j: Integer;

begin
  
  Write('Digite um numero N entre 1 e 9: ');
  Readln(n);

  if (n < 1) or (n > 9) then
  begin
    Writeln('Numero invalido. Por favor, insira um numero entre 1 e 9.');
    Exit;
  end;

  
  linhaInicio := 1;
  linhaFim := n;
  colunaInicio := 1;
  colunaFim := n;
  valorAtual := 1;

  
  while (linhaInicio <= linhaFim) and (colunaInicio <= colunaFim) do
  begin
    
    for i := colunaInicio to colunaFim do
    begin
      matriz[linhaInicio, i] := valorAtual;
      Inc(valorAtual);
    end;
    Inc(linhaInicio);

    
    for i := linhaInicio to linhaFim do
    begin
      matriz[i, colunaFim] := valorAtual;
      Inc(valorAtual);
    end;
    Dec(colunaFim);

    
    if (linhaInicio <= linhaFim) then
    begin
      for i := colunaFim downto colunaInicio do
      begin
        matriz[linhaFim, i] := valorAtual;
        Inc(valorAtual);
      end;
      Dec(linhaFim);
    end;

  
    if (colunaInicio <= colunaFim) then
    begin
      for i := linhaFim downto linhaInicio do
      begin
        matriz[i, colunaInicio] := valorAtual;
        Inc(valorAtual);
      end;
      Inc(colunaInicio);
    end;
  end;

  Writeln('Matriz Espiral (N=', n, '):');
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      
      Write(matriz[i, j]:3);
    end;
    Writeln; 
  end;

end.