//
//  MyCell.swift
//  gestioneParcheggi
//
//  Created by atrak on 12/10/21.
//

import UIKit

class MyCell: UITableViewCell {
    
    
    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtCognome: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtTelefono: UITextField!
    @IBOutlet weak var txtTarga: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
