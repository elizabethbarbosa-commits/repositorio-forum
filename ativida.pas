Program SelectionSort;

var
  V: array[1..20] of integer;
    i, j, p, n, aux: integer;

Begin
  repeat
    clrscr;
    write('Digite a quantidade de elementos: ');
    read(n);
  until (n >= 1) and (n <= 20);

  randomize; // Inicializa a geração de aleatórios
  write('Vetor gerado: ');

  for i := 1 to n do
  begin
    V[i] := random(100) + 1; // Gera um número aleatório de 0 a 99 e soma 1
    write(' ', V[i]);
  end;

  writeln;
  for i := 1 to n-1 do
  begin
    p := i;
    
    for j := i +1 to n do
      if (V[j] < V[p]) then
        p := j;
    
    aux  := V[i];
    V[i] := V[p];
    V[p] := aux;
  end;
  
  write('Vetor gerado:');
  
  for i := 1 to n do
    write(' ', V[i]);  
  
  writeln

End.