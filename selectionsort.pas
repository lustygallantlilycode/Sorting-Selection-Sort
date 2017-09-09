program seletionsort;
    var
        angka : array[1..100] of integer;
        b,a,pass,iMax,i,N : integer;
        temp:integer;
    begin
        write('Masukkan Banyak Array: ');readln(N);
        for b:=1 to N do
        begin    
            write('Angka ke - ',b,': ');readln(angka[b]);
        end;
        
        for pass:=1 to N-1 do
        begin
            iMax := pass;
            for i:=pass+1 to N do
            begin
                if (angka[pass]<angka[i]) then
                   iMax := i;
            end;
                temp := angka[pass];
                angka[pass]:=angka[iMax];
                angka[iMax]:=temp;
        end;
        
        writeln('Hasil Pengurutan: ');
        for a:=1 to N do
            writeln(angka[a]);
        readln;
    end.