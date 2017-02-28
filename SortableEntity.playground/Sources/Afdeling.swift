//
//  Afdeling.swift
//  
//
//  Created by Axel Roest on 27/02/2017.
//
//

import Foundation

public class Afdeling : SortableEntity {
    
    public let id : String
    public let afdelingNaam : String
    public let sortDescriptor: SortDescriptor<Afdeling> = { $0.afdelingNaam < $1.afdelingNaam }
   
    public init(idafd: String, afdnaam: String) {
        self.id = idafd
        self.afdelingNaam = afdnaam
        
        super.init()
    }    
}

//// MARK: ---  Debug Helper ---
extension Afdeling: CustomStringConvertible {
    public var description: String {
        return "\(self.afdelingNaam)\n"
    }
}
