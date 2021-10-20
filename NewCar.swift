//
//  newCar.swift
//  gestioneParcheggi
//
//  Created by atrak on 12/10/21.
//

import UIKit

class NewCar: UIViewController {
    
    let daoParcheggio = DaoParcheggioImpl()
    
    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtCognome: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtTelefono: UITextField!
    @IBOutlet weak var txtTarga: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func btnSalva(_ sender: Any) {
        
        //se e vuoto nn fare niente
        guard !self.txtNome.text!.isEmpty else {return}
        guard !self.txtCognome.text!.isEmpty else {return}
        guard !self.txtEmail.text!.isEmpty else {return}
        guard !self.txtTelefono.text!.isEmpty else {return}
        guard !self.txtTarga.text!.isEmpty else {return}
        
        let nome = self.txtNome.text!
        let cognome = self.txtCognome.text!
        let email = self.txtEmail.text!
        let telefono = self.txtTelefono.text!
        let targa = self.txtTarga.text!
        
        daoParcheggio.nuovaAuto(nome: nome, cognome: cognome, email: email, telefono: telefono, targa: targa)
        pulisciGliCampi()
    }
    
    func pulisciGliCampi(){
        self.txtNome.text = ""
        self.txtCognome.text = ""
        self.txtEmail.text = ""
        self.txtTelefono.text = ""
        self.txtTarga.text = ""
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
