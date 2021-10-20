//
//  UpdateAuto.swift
//  gestioneParcheggi
//
//  Created by atrak on 12/10/21.
//

import UIKit

class UpdateAuto: UIViewController {

    let daoParcheggio = DaoParcheggioImpl()
  
    @IBOutlet weak var txtNome: UITextField!
    
    @IBOutlet weak var txtCognome: UITextField!
    
    @IBOutlet weak var txtTarga: UITextField!
    @IBOutlet weak var txtTelefono: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSalvaDati(_ sender: Any) {
        
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
