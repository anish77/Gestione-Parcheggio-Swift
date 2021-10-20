# Gestione-Parcheggio-Swift

Parco Veicoli

Un’azienda ha bisogno di gestire il suo parco veicoli tramite uno strumento informatico. 
Per ogni veicolo occorrerà tenere traccia della targa, dell’anno di immatricolazione, dei chilometri percorsi e 
del costo di acquisto. Occorre poi tenere traccia degli interventi di manutenzione effettuati, per ciascuno dei quali occorre 
ricordare la data e il costo. Potrebbe essere necessario determinare, per ogni veicolo, il totale dei costi sostenuti per 
il suo acquisto e la sua manutenzione. Similmente, potrebbe essere interessante determinare il totale dei costi sostenuti per 
l’acquisto e la manutenzione di un veicolo in un dato anno. 

  //anno-costo tagliando
  var ticket1 = (1992, 150)
  var ticket2 = (1994, 155)
  var ticket3 = (1996, 300)

//targa--anno-km--costo acquisto
  var auto1 = ("AA0001AA", 1990, 70600, 2000, List(ticket1,ticket2))
  var auto2 = ("AA0001AB", 1998, 50600, 3000, List(ticket1,ticket2, ticket3))
  var auto3 = ("AA0001AC", 2010, 10600, 5000, List(ticket2,ticket3))


  var carList = List(auto1, auto2, auto3)
