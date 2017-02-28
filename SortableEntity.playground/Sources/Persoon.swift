//
//  Afdeling.swift
//  
//
//  Created by Axel Roest on 27/02/2017.
//
//

import Foundation


public class Persoon : SortableEntity {
    
    let id : String
    public let persoonNaam : String			// naam van de te benaderen persoon
    public let sortDescriptor: SortDescriptor<Persoon> = { $0.persoonNaam < $1.persoonNaam }
    public let idSortDescriptor: SortDescriptor<Persoon> = { $0.id < $1.id }
    
    public init(idafd: String, persnaam: String) {
        self.id = idafd
        self.persoonNaam = persnaam
        
        super.init()
    }
}

//// MARK: ---  Debug Helper ---
extension Persoon: CustomStringConvertible {
    public var description: String {
        return "\(self.persoonNaam)"
    }
}
