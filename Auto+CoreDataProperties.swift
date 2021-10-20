//
//  Auto+CoreDataProperties.swift
//  gestioneParcheggi
//
//  Created by atrak on 11/10/21.
//
//

import Foundation
import CoreData


extension Auto {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Auto> {
        return NSFetchRequest<Auto>(entityName: "Auto")
    }

    @NSManaged public var nome: String?
    @NSManaged public var cognome: String?
    @NSManaged public var telefono: String?
    @NSManaged public var targa: String?
    @NSManaged public var email: String?

}

extension Auto : Identifiable {

}
