//
//  DaoParcheggioImpl.swift
//  gestioneParcheggi
//
//  Created by atrak on 11/10/21.
//

import Foundation
import CoreData
import UIKit

class DaoParcheggioImpl:DaoParcheggio{
   
    
     
    //Riferimento al contenitore degli ogetti salvati in memoria
    private var context:NSManagedObjectContext
    
    init(){
        
        let application = UIApplication.shared.delegate as! AppDelegate
        self.context = application.persistentContainer.viewContext
    }
    
    func caricaAuto() -> [Auto] {
        
        //creamo un ogetto di tipo richiesta
        let richiesta : NSFetchRequest<Auto> = NSFetchRequest(entityName: "Auto")
        
        //questa e una opzione che se un object e vuoto, nn deve falire per nn andare in catch
        richiesta.returnsObjectsAsFaults = false
        
        //creiamo un array di auto
        var array = [Auto]()
        
        do{
            array = try self.context.fetch(richiesta)
            
            guard array.count > 0 else{
                print("Non ci sono macchine")
                return []
            }
        }catch let errore{
            print("Problema recupero macchina",errore)
        }
        return array
    }
    
    //Creamo un nuovo ogetto da inserire in memoria
    func nuovaAuto(nome: String, cognome: String, email: String, telefono: String, targa: String) {
        
        let entity = NSEntityDescription.entity(forEntityName: "Auto", in: self.context)
        
        //creamo una nuova macchina
        
        let newCar = Auto(entity: entity!, insertInto: self.context)
        
        newCar.nome = nome
        newCar.cognome = cognome
        newCar.email = email
        newCar.telefono = telefono
        newCar.targa = targa
    
        //Salviamo la nuova macchina
        
        do{
            try self.context.save()
           // print("SAVE _ ",newCar)
            
        }catch let errore{
            print("Problema salvataggio Macchina errore",errore)
        }
    }
    
    func visualizza(targa:String) -> [Auto] {
        //creamo un ogetto di tipo richiesta
        let richiesta : NSFetchRequest<Auto> = NSFetchRequest(entityName: "Auto")
        
        //Creamo un predicato
        let predicato = NSPredicate(format: "targa = %@", targa)
        richiesta.predicate = predicato
        
        //creiamo un array di macchine
        var array = [Auto]()
        
        do{
            array = try self.context.fetch(richiesta)
            
            guard array.count > 0 else{
                print("Non ci sono auto nel parcheggio")
                return []
            }
        }catch let errore{
            print("Problema recupero auto",errore)
        }
        return array
    }
    
    
    func modificaAuto() -> Bool {
        
        //creamo un ogetto di tipo richiesta
        let richiesta : NSFetchRequest<Auto> = NSFetchRequest(entityName: "Auto")
        //Creamo un predicato
        
        //let predicato = NSPredicate(format: "targa = %@", targa)
       
        let results = try? context.fetch(richiesta)
        
        
       
        
        return true
    }
    
    func cancellaAuto(targa: String) -> Bool {
        
       
        let auto = self.visualizza(targa: targa)
        
        if auto.count>0{
            self.context.delete(auto[0])
            
            do{
                try self.context.save()
                return true
            }catch let errore{
                print("Problema di cancellazione del auto",errore)
            }
        }
       
        
        return false
    }
    
    
}
