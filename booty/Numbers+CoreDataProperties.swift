//
//  Numbers+CoreDataProperties.swift
//  booty
//
//  Created by Tech on 2025-03-21.
//
//

import Foundation
import CoreData


extension Numbers {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Numbers> {
        return NSFetchRequest<Numbers>(entityName: "Numbers")
    }

    @NSManaged public var added: Int32

}

extension Numbers : Identifiable {

}
