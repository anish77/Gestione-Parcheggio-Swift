//
//  VisualizzaDati.swift
//  gestioneParcheggi
//
//  Created by atrak on 12/10/21.
//

import UIKit

class VisualizzaDati: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let daoParcheggio = DaoParcheggioImpl()
    var risultato : [Auto] = []
    
    @IBOutlet weak var tableview: UITableView!
    
    @IBOutlet weak var cercaTarga: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return 1
    }
    
    
    @IBAction func btnModifica(_ sender: Any) {
        print("Something")
        daoParcheggio.modificaAuto()
        
    }
    
    @IBAction func btnCerca(_ sender: Any) {
       
       // var risultato : [Auto] = []
        
        if self.cercaTarga.text != "" {
            risultato = daoParcheggio.visualizza(targa: self.cercaTarga.text!)
            print("1  risultao: ",risultato)
            //faccio un refresh alla mia tableView
            self.tableview.reloadData()
            print("2  risultao: ",risultato)
            
        } else{
            risultato = daoParcheggio.caricaAuto()
        }
        
    }
    
    @IBAction func btnCancella(_ sender: Any) {
        
        if self.cercaTarga.text != "" {
            daoParcheggio.cancellaAuto(targa: cercaTarga.text!)
            
            //dopo la cancellazione faccio un reload della tabela, cosi sara vuota
            risultato = []
            cercaTarga.text = ""
            tableview.reloadData()
            
        } else{
            print("Errore!!")
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableview.dequeueReusableCell(withIdentifier: "idCella", for: indexPath) as? MyCell
        
        
        // se inserisco una targa e lo trovo nel mio db vado a riempire le celle
        
        if self.cercaTarga.text != "" {
            risultato = daoParcheggio.visualizza(targa: self.cercaTarga.text!)
            print("Risultato:", risultato)
            
            
        } else{
            //inizialmente le celle sono vuote
            cell?.txtNome.text = ""
            cell?.txtCognome.text = " "
            cell?.txtEmail.text = " "
            cell?.txtTelefono.text = ""
            cell?.txtTarga.text = ""
            // risultato = daoParcheggio.caricaAuto()
        }
        
        if risultato.count > 0{
            
            print("prova ris",risultato.count)
            //var strRis = " "
            for elem in risultato{
                cell?.txtNome.text = elem.nome
                cell?.txtCognome.text = elem.cognome
                cell?.txtEmail.text = elem.email
                cell?.txtTelefono.text = elem.telefono
                cell?.txtTarga.text = elem.targa
                
            }
        }
        
        return cell!
    }
    
    
   
        
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
