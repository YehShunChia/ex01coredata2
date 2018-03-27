//
//  Items+CoreDataProperties.swift
//  ex01coredata
//
//  Created by megasilver on 2018/3/27.
//  Copyright © 2018年 com.megasilver. All rights reserved.
//
//

import Foundation
import CoreData


extension Items {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Items> {
        return NSFetchRequest<Items>(entityName: "Items")
    }

    @NSManaged public var amt: NSDecimalNumber?
    @NSManaged public var gid: Int64
    @NSManaged public var itemcount: Int16
    @NSManaged public var itemname: String?
    @NSManaged public var item: Orders?

}
