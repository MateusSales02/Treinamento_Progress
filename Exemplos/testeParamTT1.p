def temp-table tt-dados no-undo like customer.

run pi-processa(output table tt-dados).

for each tt-dados:
    disp tt-dados.cust-num
         tt-dados.name.
end.


procedure pi-processa:
    def output param table for tt-dados.
    for each customer no-lock:
        create tt-dados.
        buffer-copy customer to tt-dados.
    end.
end procedure.
