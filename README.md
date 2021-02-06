# DiagrammaDiMoody
 Collezione di script Matlab per la stima del coefficiente di resistenza, tramite le equazioni che descrivono il diagramma di Moody

## AutoCARB

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