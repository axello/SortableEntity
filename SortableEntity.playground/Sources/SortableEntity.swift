//
//  SortableEntity.swift
//  
//
//  Created by Axel Roest on 27/02/2017.
//
//

import Foundation

public typealias SortDescriptor<Value> = (Value, Value) -> Bool

// Implementation of == required by Equatable
public func ==(lhs: SortableEntity, rhs: SortableEntity) -> Bool {
    return lhs == rhs
}

public func <(lhs: SortableEntity, rhs: SortableEntity) -> Bool {
    return lhs < rhs
}

public func sortedValues<T:Comparable>(arr: [T]) -> [T] {
    return arr.sorted(by: { (value1, value2) -> Bool in
        return value1 < value2
    })
}

public class SortableEntity : AnyObject, Equatable, Comparable {
    func sortDescriptor<Value, Key>(key: @escaping (Value) -> Key)
        -> SortDescriptor<Value> where Key: Comparable {
            return { key($0) < key($1) }
    }
}

// Probably need some more magic here to be generalised.
//
//extension Array {
//    func sortEntity<T:SortableEntity>() -> Array<T> {
//        if self.count > 1 {
//            let item = self[0] as! T
//            let descriptor = item.sortDescriptor
//            let arr = self.sorted(by: descriptor)
//        } else {
//            return self
//        }
//    }
//}
