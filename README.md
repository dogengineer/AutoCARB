# AutoCARB

![splash](splash.png)

Quest'applicazione verifica la carburazione tramite un metodo analitico, il quale prende in considerazione le seguenti ipotesi:
1. Si trascurano gli effetti dinamici, assumendo il flusso d'aria e il flusso di benzina stazionari.
Gli effetti dinamici sono dati dalla periodica aspirazione di carica fresca operata da ogni
cilindro, il flusso può essere instazionario anche in condizioni di regime e carico costanti.
2. Si considera il fluido incomprimibile.
3. Si trascurano le perdite di carico e gli scambi di calore con le pareti fino alla sezione di
ingresso del convergente.
4. Si considera Cc<Cd .

Il programma riesce a calcolare il fattore di attrito, simulando in maniera quasi perfetta il diagramma di Moody.

L'applicazione è [scaricabile a questo indirizzo](https://github.com/dogengineer/DiagrammaDiMoody/releases/)

## Installazione

Andando alla [pagina di download](https://github.com/dogengineer/DiagrammaDiMoody/releases/) è possibile scaricare due versioni del programma.

### 1. **AutoCARB_win_installer.zip**
Questa versione scarica e installa tutto il software necessario (Matlab) sul vostro computer e rende l'applicazione disponibile e funzionante. Questa è la versione consigliata per gli utenti meno esperti.

### 2. **AutoCARB_win.zip**
Questa è una versione _lightweight_ del programma, che richiede come prerequisito l'installazione del [**runtime Matlab R2020b**](https://it.mathworks.com/products/compiler/matlab-runtime.html). Consigliata ad utenti più esperti.


## Utilizzo

TODO: aggiungere il link al PDF e istruzioni sull'utilizzo del programma.

## Codice sorgente

Al momento il codice sorgente per l'intera applicazione non è disponibile perché non completo.
Parte della logica applicativa è disponibile negli script presenti nella cartella
[sources](sources).
Il codice dell'applicazione verrà reso disponibile non appena quest'ultima sarà completata.

## Contributors

[Davide Maieron](https://www.linkedin.com/in/davide-maieron-3757851bb/): lead programmer and engineer
[Roberta Carlevaris](https://www.instagram.com/robzilla.tattoo/): chief artist and designer

## Licenza

Il programma è rilasciato sotto licenza [GPLv3](LICENSE).
