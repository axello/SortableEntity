//
//  Afdeling.swift
//  
//
//  Created by Axel Roest on 27/02/2017.
//
//

import Foundation

//// Implementation of == required by Equatable
//public func ==(lhs: Afdeling, rhs: Afdeling) -> Bool {
//    return lhs.id == rhs.id
//}
//
//public func <(lhs: Afdeling, rhs: Afdeling) -> Bool {
//    return lhs.afdelingNaam < rhs.afdelingNaam
//}
//

public class Afdeling : SortableEntity {
    
    public let id : String
    public let afdelingNaam : String
    public let sortDescriptor: SortDescriptor<Afdeling> = { $0.afdelingNaam < $1.afdelingNaam }
   
    public init(idafd: String, afdnaam: String) {
        self.id = idafd
        self.afdelingNaam = afdnaam
        
        super.init()
    }

    
//    func sortDescriptor<Value, Key>(
//        key: @escaping (Value) -> Key,
//        _ isOrderedBefore: @escaping (Key, Key) -> Bool)
//        -> SortDescriptor<Value> {
//            return { isOrderedBefore(key($0), key($1)) }
//    }
    
//    override func sortDescriptor<Value, Key>(key: @escaping (Value) -> Key)
//        -> SortDescriptor<Value> where Key: Comparable {
//            return { key($0) < key($1) }
//    }
    
}

//// MARK: ---  Debug Helper ---
extension Afdeling: CustomStringConvertible {
    public var description: String {
        return "\(self.afdelingNaam)\n"
    }
}
