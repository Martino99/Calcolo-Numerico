clc
clear
format long

funzione = input("Inserisci funzione f(x) -> ", 's');
derivata = input("Inserisci derivata f'(x) -> ", 's');
x0 = input("Inserisci punto iniziale x0 -> ");

f = inline(funzione);
f1 = inline(derivata);
tic
[radice, numero_iterate] = Metodo_Newton(f, f1, x0);
toc

mex = sprintf("The root is: %f. \nNumero di iterazioni: %d.", radice, numero_iterate);
disp(mex) 

%sin(x^2+2*x)
%2*cos(x^2+2*x)*(x+1)