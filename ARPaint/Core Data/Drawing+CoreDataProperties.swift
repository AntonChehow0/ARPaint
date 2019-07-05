//
//  Drawing+CoreDataProperties.swift
//
//  Created by Vitaliy Musonov
//
//

import Foundation
import CoreData


extension Drawing {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Drawing> {
        return NSFetchRequest<Drawing>(entityName: "Drawing")
    }

    @NSManaged public var worldMap: NSData
    @NSManaged public var screenShot: NSData
    @NSManaged public var dateCreated: NSDate
    @NSManaged public var name: String

}
