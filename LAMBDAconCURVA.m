% Autore: Davide Maieron
% Data: 04 Febbraio 2021
% Licenza: leggere il file "LICENSE" allegato

clear;clc;format long;

%input numero di Reynolds e rugosità relativa
Re = 2600;
epsR = 0.08;

%inserisco i punti da interpolare
x=[7*10^7 3.5*10^7 1.7*10^7 8.5*10^6 5.5*10^6 4.25*10^6 3.4*10^6 2.3*10^6 1.7*10^6 1.1*10^6 8.5*10^5 5.5*10^5 4.5*10^5 3.5*10^5 2.7*10^5 2.3*10^5 2*10^5 1.7*10^5 1.4*10^5 1.2*10^5 10^5 8.5*10^4 7.5*10^4 7*10^4 5.75*10^4 5*10^4]';
y=[0.00005 0.0001 0.0002 0.0004 0.0006 0.0008 0.001 0.0015 0.002 0.003 0.004 0.006 0.008 0.01 0.0125 0.015 0.0175 0.02 0.025 0.03 0.035 0.04 0.045 0.05 0.06 0.07]';

%uso la funzione matlab interp1 per interpolare i numeri su di una retta e
%gli faccio pescare il valore delparametro Re e lui mi calcola un valore
%interpolato di epsR(rugosità relativa) il quale si trova sulla curva del
%diagramma di Moody che separa il moto misto dal moto puramente turbolento
epsINT=interp1(x,y,Re); %eps interpolata

if Re<0 || Re>10^8 || epsR<=0 || epsR>=0.07
     msgbox("ATTENZIONE! Parametri fuori dalla tabella di Moody.");
end

%costruisco un IF che mi permette di capire in che punto del diagramma di
%Moody mi trovo, così da poter usare le equazioni adeguate
if Re<=2500
    %Equazione di Reynolds laminare
    lambda=64/Re;
    fprintf('regime laminare \n');

elseif Re>2500 && epsR==0
    %equazione di Prandtl e Von Karman per tubi lisci (eq.nn lineare)
    F = @(f,Re) 2*log10(Re*sqrt(f))-0.8-(1/sqrt(f));  
    fun = @(f) F(f,Re);         
    fZ = fzero(fun,0.1);
    lambda=fZ;
    fprintf('tubi lisci \n');
        
elseif  epsINT<=epsR 
    %equazione di Von Karman per moti puramente turbolenti
    lambda=(1/(-2*log10(epsR/3.71)))^2;
    fprintf('Moto Turbolento per tubi scabri \n');
      
        
else
    %Equazione di Colebrook per moti misti (eq.nn lineari)
    F = @(f,epsR,Re) 1.14-2*log10(epsR+9.35/(Re*sqrt(f)))-(1/sqrt(f));
    fun = @(f) F(f,epsR,Re); 
    fZ = fzero(fun,0.1);
    lambda=fZ;
    fprintf('Moto Misto per tubi scabri \n');
        
end

%faccio scrivere a matlab il valore di lambda calcolato
fprintf('lambda=');disp(lambda);