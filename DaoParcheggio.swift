//
//  DaoParcheggio.swift
//  gestioneParcheggi
//
//  Created by atrak on 11/10/21.
//

import Foundation

protocol DaoParcheggio{
    
    //visualizzo tutte le mie auto dal db
    func visualizza(targa:String) -> [Auto]
    
   // func visualizzaDettagliproprietario()
    func caricaAuto()->[Auto]
    //aggiungo una nuova auto nel db
    func nuovaAuto(nome:String,cognome:String,email:String,telefono:String,targa:String)
    
    func modificaAuto(nome:String,cognome:String,email:String,telefono:String,targa:String)->Bool
    
    func cancellaAuto(targa:String)->Bool
}
