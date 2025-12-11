program ValidaCPF;

var
  cpf_str: string[11];
  i, soma, resto, dv1, dv2, digito_original1, digito_original2: integer;
  valido: boolean;

begin
  writeln('Digite o CPF (apenas numeros, 11 digitos):');
  readln(cpf_str);

  
  if Length(cpf_str) <> 11 then
  begin
    writeln('CPF invalido. Deve ter 11 digitos.');
    exit;
  end;

 
  soma := 0;
  for i := 1 to 9 do
  begin
   
    soma := soma + (Ord(cpf_str[i]) - Ord('0')) * (11 - i);
  end;
  resto := soma mod 11;
  if (resto < 2) then
    dv1 := 0
  else
    dv1 := 11 - resto;

 
  soma := 0;
  for i := 1 to 10 do 
  begin
    soma := soma + (Ord(cpf_str[i]) - Ord('0')) * (12 - i);
  end;
  resto := soma mod 11;
  if (resto < 2) then
    dv2 := 0
  else
    dv2 := 11 - resto;

 
  digito_original1 := Ord(cpf_str[10]) - Ord('0');
  digito_original2 := Ord(cpf_str[11]) - Ord('0');


  if (dv1 = digito_original1) and (dv2 = digito_original2) then
    valido := true
  else
    valido := false;

  if (cpf_str = '00000000000') or (cpf_str = '11111111111')then
    valido := false;

  if valido then
    writeln('O CPF e VALIDO.')
  else
    writeln('O CPF e INVALIDO.');
end.